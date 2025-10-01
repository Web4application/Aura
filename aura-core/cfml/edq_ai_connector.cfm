<cfsetting enablecfoutputonly="true">
<cfparam name="form.event_json" default="">
<cfparam name="form.ai_script" default="process_edq_ai.py">
<cfif Len(form.event_json) EQ 0><cfabort showerror="true" message="No data"></cfif>

<cfset temp_dir = GetTempDirectory()>
<cfset tempfile_in  = GetTempFile(temp_dir, "edq_ai_input_")>
<cfset tempfile_out = GetTempFile(temp_dir, "edq_ai_output_")>

<cffile action="write" file="#tempfile_in#" output="#form.event_json#" charset="utf-8">

<cftry>
    <cfexecute name="python"
               arguments="../python/#form.ai_script# #tempfile_in# #tempfile_out#"
               timeout="180" variable="exec_result">
    </cfexecute>

    <cffile action="read" file="#tempfile_out#" variable="ai_results" charset="utf-8">
    <cfset results_struct = deserializeJSON(ai_results)>

    <cfoutput>
    <script>
        var edqAIResults = #serializeJSON(results_struct)#;
        if(typeof updateEDQDashboard==="function"){ updateEDQDashboard(edqAIResults); }
        else { console.log("EDQ-AI Results:", edqAIResults); }
    </script>
    </cfoutput>

<cfcatch type="any">
    <cfoutput>
        <script>console.error("EDQ-AI Connector Error: #cfcatch.message#");</script>
    </cfoutput>
</cfcatch>
</cftry>

<cffile action="delete" file="#tempfile_in#">
<cffile action="delete" file="#tempfile_out#">
<cfsetting enablecfoutputonly="false">
