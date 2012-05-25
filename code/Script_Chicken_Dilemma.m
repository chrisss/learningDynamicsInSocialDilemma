%%Our Chicken-Dilemma as a Scirpt

%Initial_Conditions =initialization(IniAspiration,IniProbCoop,IniDecision,IniStrategy)
%what number is what is described in the initAsp, initDec and InitProb

%IniAspiration:
%Asp=1: Here everybody has the mean of the payoff matrix as initial
        %aspiration
%Asp=2: Here everybody has the initial aspiration of 6
%Asp=3: Here everybody has the initial aspiration of 0

%IniProbCoop:
%Prob=1; %Initially 50% cooperation, 50% deflection
%Prob=2; random Probabilities from 0 to 1
%Prob=3; Initialy from "left to right" kind of floating probabilitie from
%Prob=4; 1/Ngrid to 1

%IniDecision:
%Dec=1; random initial decisions 0 or 1
%Dec=2; first all Cooperate;
%Dec=3; first all deflect;
%Dec=4: mit ProbCoop 4

%IniStrategy:
%Strat=1: everybody only learning high
%Strat=2: everybody learning mit Gruppendruck
%Strat=3: everybody no adjustment
%Strat=4: everybody strategy 4
%Strat=5: everybody decides randomly
%Strat=6: everybody randomly, but one Neighbourhood with learning high
%Strat=7: everybody constant, but one Neighbourhood with learning high
%Strat=8: everybody randomly, but one Neighbourhood with learning high and peer
%         pressure
%Strat=9: everybody constant, but one Neighbourhood with learning high and peer
%         pressure
%Strat=10: left side low learning rate, right side high learning rate

NGrid=20;  %Grid size (NGridxNGrid)

%% %%%%%%%% Running Time & start the game %%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%Simulations%%%%%%%%%%%%%%%%%%%%%%%
NSimulation=20; %Number of Simulations

%%%%%%%%%%%%%%%%%Rounds%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NRounds=100; %Number of rounds

%%% Plotting stuff

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!

mProbtime1=zeros(NGrid,NGrid);
mProbtime2=zeros(NGrid,NGrid);
mProbtime3=zeros(NGrid,NGrid);
mProbtime4=zeros(NGrid,NGrid);
mProbtime5=zeros(NGrid,NGrid);
mProbtime6=zeros(NGrid,NGrid);

for l=1:NSimulation
%Initialization
%[...]=Initialization(IniAspiration,IniProbCoop,IniDecision,IniStrategy,NGrid)
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(4,1,1,4,NGrid);


    
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
    
     %Number of played games in that round
     Ngames=zeros(NGrid,NGrid);
          
    %% Iterate over all cells in grid x, for index i=1..N and j=1...N
    for i=1:NGrid
        for j=1:NGrid
            %%%HERE: LET PLAY THE PARTICIPANTS AGAINST EACH OTHER
            %%Play with the whole neighbourhood of player (i,j)!! -> (ig,jg)
        
            
             for k=1:8
                 
                 %with periodic boundaries
                 
                ig = i+mNeigh(k,1);
                
                if ig > NGrid
                    ig = 1;
                end
                if ig < 1
                    ig = NGrid;
                end
                
                jg = j+mNeigh(k,2);
                
                if jg > NGrid
                    jg = 1;
                end
                if jg < 1
                    jg = NGrid;
                end
                
                %Check if the cell is within the grid boundaries
                %if (ig>=1&& jg>=1 && ig<=NGrid && jg<=NGrid) %nonperdiodic
                %boundary
                
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
  
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          
          
             end
            
        end
    end
    
    if q==1 
        mProbtime1 = mProbtime1+mProbCoop;
    elseif q==10 
        mProbtime2 = mProbtime2+mProbCoop;
    elseif q==20 
        mProbtime3 = mProbtime3+mProbCoop;
    elseif q==30 
        mProbtime4 = mProbtime4+mProbCoop;
    elseif q==60 
        mProbtime5 = mProbtime5+mProbCoop;
    elseif q==100
        mProbtime6 = mProbtime6+mProbCoop;
    end
    
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
 %%%%%Updating all parameters of players%%%%%%%%%%%%
 
  % Iterate over all cells in grid x, for index i=1..N and j=1...N
  for i=1:NGrid
        for j=1:NGrid

            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
            
            
            %% Iterate over neighbours... Moore-Neighbourhood
            for k=1:8
                 i2 = i+mNeigh(k,1);
                
                if i2 > NGrid
                    i2 = 1;
                end
                if i2 < 1
                    i2 = NGrid;
                end
                
                j2 = j+mNeigh(k,2);
                
                if j2 > NGrid
                    j2 = 1;
                end
                if j2 < 1
                    j2 = NGrid;
                end
                
                i2=round(i2);
                j2=round(j2);
                %Check if the cell is within the grid boundaries
                 %If the place in grid is within the neighbourhood do blablabla
                   NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                   NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                   
                   NumberOfNeightime = 24;
                   NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           
            end
           
            [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
    end
    %% %%Save the data somehow and show animated pixle picture demonstrating decisions in each round!!!
  %  imshow(mDecision)
  
  %  imagesc(mProbCoop)
  
  
  Ptime(l,q)= mProbCoop(1,1);  %!!!!!!!!!!Define Coordinates for required player
end
   
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds


end

%%Normalization of vectors
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal = sum(Ptime)/NSimulation;


 mProbtime1 = mProbtime1/NSimulation;

 mProbtime2 = mProbtime2/NSimulation;

 mProbtime3 = mProbtime3/NSimulation;
 
mProbtime4 = mProbtime4/NSimulation;

mProbtime5 = mProbtime5/NSimulation;

mProbtime6 = mProbtime6/NSimulation;
%save experiment1.mat

%% Plotting
 save ProbabilityToCooperateInDiffRound14.mat
 
return

subplot(2,3,4)
        imagesc(mProbtime1,[0 1]);
        colormap(jet(10));
        colormap hot
        ylabel('Probability to Cooperate in first round')
        colorbar('Location','WestOutside');
        set(gca,'XTickLabel',[]) 
set(gca,'YTickLabel',[])
subplot(2,3,5)
        imagesc(mProbtime2,[0 1]);
        colormap(jet(10));
        colormap hot
        ylabel('Probability to Cooperate in round 10')
        set(gca,'XTickLabel',[]) 
set(gca,'YTickLabel',[])
subplot(2,3,6)
        imagesc(mProbtime3,[0 1]);
        colormap(jet(10));
        colormap hot
        ylabel('Probability to Cooperate in round 20')
set(gca,'XTickLabel',[]) 
set(gca,'YTickLabel',[])
 

subplot(2,3,1)
        imagesc(mProbtime4,[0 1]);
        colormap(jet(10));
        colormap hot
        ylabel('Probability to Cooperate in round 30')
        set(gca,'XTickLabel',[]) 
set(gca,'YTickLabel',[])
        

subplot(2,3,2)
        imagesc(mProbtime5,[0 1]);
        colormap(jet(10));
        colormap hot
        ylabel('Probability to Cooperate in round 60')
        set(gca,'XTickLabel',[]) 
set(gca,'YTickLabel',[])
        
subplot(2,3,3)
        imagesc(mProbtime6,[0 1]);
        colormap(jet(10));
        colormap hot
        ylabel('Probability to Cooperate in round 100')
 set(gca,'XTickLabel',[]) 
set(gca,'YTickLabel',[])

set(gcf, 'PaperPosition', [0 0 20 20]); 
set(gcf, 'PaperSize', [20 20]); 
saveas(gcf, 'ProbabilityToCooperateInDiffRound14', 'pdf')





set(gcf, 'PaperPosition', [0 0 30 30]); 
set(gcf, 'PaperSize', [30 30]); 
saveas(gcf, 'ProbabilityToCooperateInDiffRound33', 'pdf') 
    
    
    

