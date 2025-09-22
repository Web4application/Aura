function varargout = aura(varargin)
% AURA  Aura Hub startup function for .xlsl ecosystem
%
% USAGE:
%   aura start              : Start Aura Hub (GUI if available)
%   aura nogui              : Start Aura Hub without GUI (for scripts/automation)
%   aura simulate           : Run Simulation_Scenarios sheet
%   aura visualize          : Render charts using Visualization_Config
%   aura deploy             : Load deployment settings (APIs, endpoints)
%   aura ethics             : Open Ethics_Notes sheet
%   aura collab             : Open Collaboration_Log
%   aura reset              : Re-initialize Aura environment
%   aura stop               : Close Aura session
%   aura status             : Return Aura status (1=running, 0=stopped)
%
%   aura [script] [args]    : Run external script with Aura environment loaded
%
% -------------------------------------------------------------------------
% Authors: You (Seriki Yakub / KUBU LEE), 2025
% License: Open for research, community-driven

% -------------------------------------------------------------------------
% Initialize
more off
AuraHomeDir = fileparts(which(mfilename));
AuraDbFile  = fullfile(AuraHomeDir, 'data', 'Aura.xlsl');

% Default action
if nargin == 0
    action = 'start';
else
    action = lower(varargin{1});
end

res = 1;
switch action
    case 'start'
        disp('AURA> Starting Aura Hub...');
        aura_setpath(AuraHomeDir);
        aura_load(AuraDbFile, true);  % true = with GUI if available

    case 'nogui'
        disp('AURA> Starting Aura Hub (no GUI)...');
        aura_setpath(AuraHomeDir);
        aura_load(AuraDbFile, false);

    case 'simulate'
        disp('AURA> Running simulation scenarios...');
        aura_run_simulations(AuraDbFile);

    case 'visualize'
        disp('AURA> Generating visualizations...');
        aura_run_visuals(AuraDbFile);

    case 'deploy'
        disp('AURA> Loading deployment configs...');
        aura_deploy(AuraDbFile);

    case 'ethics'
        disp('AURA> Opening Ethics_Notes...');
        aura_open_sheet(AuraDbFile, 'Ethics_Notes');

    case 'collab'
        disp('AURA> Opening Collaboration_Log...');
        aura_open_sheet(AuraDbFile, 'Collaboration_Log');

    case {'reset'}
        disp('AURA> Resetting Aura Hub...');
        aura_reset(AuraDbFile);

    case {'stop', 'exit', 'quit'}
        disp('AURA> Closing Aura Hub...');
        clear all; close all; clc;

    case {'status'}
        res = evalin('base', 'exist(''AURA_RUNNING'', ''var'');');

    otherwise
        disp(['AURA> Unknown command: ' action]);
end

if nargout >= 1
    varargout{1} = res;
end
end

% ===== SET PATH =====
function aura_setpath(AuraHomeDir)
    addpath(fullfile(AuraHomeDir, 'toolbox'));
    addpath(fullfile(AuraHomeDir, 'scripts'));
    disp('AURA> Paths set.');
end
