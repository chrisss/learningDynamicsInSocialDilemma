%% *************Initialization************* %%

%% %%%%%%% Define Variables %%%%%%%%%%%

function[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(IniAspiration,IniProbCoop,IniDecision,IniStrategy,NGrid)

%%payments
R=4; %mutual cooperation (CC)
S=2; %unilateral cooperation [player cooperates] (CD)
T=6; %unilateral defection [player defects] (DC)
P=0; %mutual defection (DD)

%%payoff-matrix
mPayoff=[R T; S P]; %We let this fixed!!![bothCooperate,temptationToDefect;suckerPayoff,bothDefect]

%%%%Players%%%%
NPlayer=NGrid^2; %Numbers of players

%Initial Aspiration matrix
IniAspiration; %%%What initial Aspiration do you want? (See on top of function initasp)
[mAspiration]=initAsp(IniAspiration,NGrid); %Matrix with aspirations of each player 

%Initial probability of Cooperation matrix
IniProbCoop; %%%What initial Probability of Cooperation do you want? (See on top of function initProb)
[mProbCoop]=initProb(IniProbCoop,NGrid); 

%Initial score matrix   %%%-----fix
mScore=zeros(NGrid,NGrid); % matrix with total score of each player
mLastScore=zeros(NGrid,NGrid); %matrix with value of score of whole last round
LastScoreA=0;
LastScoreB=0; % Last score of the two cells to initialize

%Matrix for strategies
IniStrategy;
[mStrategy]=initStrat(IniStrategy,NGrid);

%Define grid
IniDecision;
mDecision=initDec(IniDecision,NGrid);%decisions: 1=Cooperation, 0=Deflection
LastDecision = rand(NGrid,NGrid)<0.5;
LastLastDecision = rand(NGrid,NGrid)<0.5;
LastLastLastDecision = rand(NGrid,NGrid)<0.5;

%%%%%%%%%%%Define neighbourhood%%%%%%%%%%%%%%%%%     %%%-----fix
mNeigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0];




