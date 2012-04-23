%% *************Initialization************* %%

%% %%%%%%% Define Variables %%%%%%%%%%%
Varying_Initial_conditions;

%%payments
R=4; %mutual cooperation (CC)
S=2; %unilateral cooperation [player cooperates] (CD)
T=6; %unilateral defection [player defects] (DC)
P=0; %mutual defection (DD)

%%payoff-matrix
mPayoff=[R T; S P]; %[bothCooperate,temptationToDefect;suckerPayoff,bothDefect]


%%%%%%%%%%%%Set Up a grid%%%%%%%%%%%%%%%%

NGrid=10;  %Grid size (NGridxNGrid)

%%%%Players%%%%
NPlayer=NGrid^2; %Numbers of players

%Initial Aspiration matrix
mAspiration=3*ones(NGrid,NGrid); %Matrix with aspirations of each player (initially mean of all payoffs)

%Initial probability of Cooperation matrix
mProbCoop=0.5*ones(NGrid,NGrid); %Initially 50% cooperation, 50% deflection

%Initial score matrix   %%%-----fix
mScore=zeros(NGrid,NGrid); % matrix with total score of each player
mLastScore=zeros(NGrid,NGrid); %matrix with value of score of whole last round
LastScoreA=0;
LastScoreB=0; % Last score of the two cells to initialize


%Define grid
mDecision=rand(NGrid,NGrid)<0.5; %This generates a grid with boolean numbers (0 or 1) with the probability of 50% to have a 1
                                 %This is vector with the players true
                                 %decisions: 1=Cooperation, 0=Deflection

%%%%%%%%%%%Define neighbourhood%%%%%%%%%%%%%%%%%     %%%-----fix
mNeigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0];

