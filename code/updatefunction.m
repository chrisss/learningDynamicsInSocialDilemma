%% The update functions for the specific parameters of the players
% 
% Returns new Aspiration, Probability for Cooperation and Decision value

%I defined it like; If at minimum 80% of neighbours made the same decision (all
%cooperation or deflection) then accompany them else run through learning
%prozess
function [Aspiration,ProbCoop,Decision]=updatefunction(InitialAspiration,InitialProbCoop,LastPayoff,NeighDecVal,NumberOfNeigh)

%Initializing parameters

Stimulus=0;

R=4; %mutual cooperation (CC)
S=2; %unilateral cooperation [player cooperates] (CD)
T=6; %unilateral defection [player defects] (DC)
P=0; %mutual defection (DD)

%%

if(NeighDecVal>=0.8*NumberOfNeigh) %in min 80% cooperated
    Decision = 1;
    Aspiration = InitialAspiration; %Aspiration&probability of Cooperation stay the same; REASONABLE???
    ProbCoop = InitialProbCoop;
    
%%    

elseif(NeighDecVal<=0.2*NumberOfNeigh) %in min 80% deflected
    Decision = 0;
    Aspiration = InitialAspiration; %Aspiration&probability of Cooperation stay the same; REASONABLE???
    ProbCoop = InitialProbCoop;
    
%%   

else   
X=[abs(T-InitialAspiration);abs(R-InitialAspiration);abs(P-InitialAspiration);abs(S-InitialAspiration)];
Stimulus=(LastPayoff-InitialAspiration)/max(X); %%Calculation of stimulus
   
L=0.8;   %Learningrate

%%%%%%%%%% Updating Probability of Cooperation %%%%%%%%%%%%%%%%%%%%
if(Stimulus>=0)
    
ProbCoop = InitialProbCoop + (1-InitialProbCoop)*L*Stimulus;

else
    
ProbCoop = InitialProbCoop + InitialProbCoop*L*Stimulus;
    
end

%%%%%%%%%%%%% Updating Aspiration %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=0.5; %h is the degree to which the aspiration level floats toward the payoff; when h=0 the aspiration constant
Aspiration = (1-h)*InitialAspiration + h*LastPayoff;


%%%%%%%%%%%%%% Updating Decision %%%%%%%%%%%%%%%%%%%%%%%%%
Decision = rand>=ProbCoop;

end
%%




end