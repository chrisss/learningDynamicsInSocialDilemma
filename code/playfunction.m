%% The play function represents one round of playing 2 participants against each other
% 
% Returns

% Christian Dorn 4.4.2012
% General Behavior Simulation for Chicken-Dilemma

%   Player A         /  Player B        
%                  Cooperation    Defection
%       Cooperation    R/R           S/T
%        Defiction     T/S          P/P


function [winA,winB]=playfunction(DecisionA,DecisionB)

R=4; %mutual cooperation (CC)
S=2; %unilateral cooperation [player cooperates] (CD)
T=6; %unilateral defection [player defects] (DC)
P=0; %mutual defection (DD)

winA = 0;
winB = 0;

    if DecisionA == 1
        if DecisionB == 1
            winA = winA + R;
            winB = winB + R;
        else 
            winA = winA + S;
            winB = winB + T;
        end
    end
    if DecisionA == 0
        if DecisionB == 1
            winA = winA + T;
            winB = winB + S;
        else 
            winA = winA + P;
            winB = winB + P;
        end
    end
    


  