<cfsetting enablecfoutputonly="true">

<!--- --- CONFIGURATION --- --->
<cfset ai_scripts_dir = "C:\EDQ-AI\scripts"> <!-- Folder containing Python AI scripts -->
<cfset default_ai_script = "process_edq_ai.py">
<cfset temp_dir = GetTempDirectory()>

<!--- --- INPUT HANDLING --- --->
<cfparam name="form.event_json" default="">
<cfparam name="form.ai_script" default="#default_ai_script#">

<cfif Len(form.event_json) EQ 0>
    <cfabort showerror="true" message="No EDQ-AI event data received.">
</cfif>

<!--- Clean input --->
<cfset submitted_json = REReplace(URLDecode(form.event_json), "<[^>]+>", " ", "all")>

<!--- --- CREATE TEMP FILES --- --->
<cfset tempfile_in  = GetTempFile(temp_dir, "edq_ai_input_")>
<cfset tempfile_out = GetTempFile(temp_dir, "edq_ai_output_")>

<cffile action="write" file="#tempfile_in#" output="#submitted_json#" charset="utf-8">

<!--- --- EXECUTE PYTHON AI SCRIPT --- --->
<cftry>
    <cfexecute name="python"
               arguments="#ai_scripts_dir#\#form.ai_script# #tempfile_in# #tempfile_out#"
               timeout="180"
               variable="exec_result">
    </cfexecute>

    <!--- Read AI output --->
    <cffile action="read" file="#tempfile_out#" variable="ai_results" charset="utf-8">

    <!--- Parse JSON output --->
    <cfset results_struct = deserializeJSON(ai_results)>

    <!--- Generate JavaScript for Front-End Dashboard --->
    <cfoutput>
    <script>
        var edqAIResults = #serializeJSON(results_struct)#;
        if (typeof updateEDQDashboard === "function") {
            updateEDQDashboard(edqAIResults);
        } else {
            console.log("EDQ-AI Results:", edqAIResults);
        }
    </script>
    </cfoutput>

<cfcatch type="any">
    <cfoutput>
        <script>
            console.error("EDQ-AI Connector Error: #cfcatch.message#");
        </script>
    </cfoutput>
</cfcatch>
</cftry>

<!--- --- CLEAN UP TEMP FILES --- --->
<cffile action="delete" file="#tempfile_in#">
<cffile action="delete" file="#tempfile_out#">

<cfsetting enablecfoutputonly="false">
