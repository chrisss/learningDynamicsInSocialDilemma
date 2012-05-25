%% The update functions for the specific parameters of the players
% 
% Returns new Aspiration, Probability for Cooperation and Decision value

%I defined it like; If at minimum 80% of neighbours made the same decision (all
%cooperation or deflection) then accompany them else run through learning
%prozess
function [Aspiration,ProbCoop,Decision,LastDecision1,LastDecision2,LastDecision3]=updatefunction(InitialAspiration,InitialProbCoop,LastPayoff,NeighDecVal,NumberOfNeigh,Strategy,InitialDecision,InitialLastDecision1,InitialLastDecision2,NeighDecValA,NumberOfNeighA)

%Initializing parameters

Stimulus=0;

R=4; %mutual cooperation (CC)
S=2; %unilateral cooperation [player cooperates] (CD)
T=6; %unilateral defection [player defects] (DC)
P=0; %mutual defection (DD)

%% !!!!!!!!!!!!!! Strategies !!!!!!!!!!!!!!

%Strategy=1: Learning dynamics as described in previous chapter with high learning rate
%Strategy=2: Learning as Strategy 1 with peer pressure (80%)
%Strategy=3: Initial values remain over the whole game
%Strategy=4: Learning mit "Gruppendruck" aber taking 3 decisions into
%             account
%Strategy=5: random decisions
%Strategy=6: Learning as in paper with low learning rate

%%
if Strategy == 1
    
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


elseif Strategy == 2

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

%%other strategies!!!


elseif Strategy == 3
   
    
    Aspiration = InitialAspiration;
    ProbCoop = InitialProbCoop;
    Decision = InitialDecision;

elseif Strategy == 4
    
    if(NeighDecValA>=0.8*NumberOfNeighA) %in min 80% cooperated with taking 3 decisions before in account
        Decision = 1;
        Aspiration = InitialAspiration; %Aspiration&probability of Cooperation stay the same; REASONABLE???
        ProbCoop = InitialProbCoop;

    %%    

    elseif(NeighDecValA<=0.2*NumberOfNeighA) %in min 80% deflected with taking 3 decisions before in account
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
    
    
elseif Strategy == 5
    
    ProbCoop = rand;
    Aspiration = InitialAspiration;
    Decision = rand>=ProbCoop;
    
elseif Strategy == 6
    
    X=[abs(T-InitialAspiration);abs(R-InitialAspiration);abs(P-InitialAspiration);abs(S-InitialAspiration)];
    Stimulus=(LastPayoff-InitialAspiration)/max(X); %%Calculation of stimulus

    L=0.3;   %Learningrate

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


LastDecision3=InitialLastDecision2;
LastDecision2=InitialLastDecision1;
LastDecision1=InitialDecision;







end