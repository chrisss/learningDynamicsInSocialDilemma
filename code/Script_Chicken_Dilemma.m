%%Our Chicken-Dilemma as a Scirpt

Initialization;

% Create new image **** I DON'T NOW IF THIS IS NECESSARY! ***
image;

%% %%%%%%%% Running Time & start the game %%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%Rounds%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NRounds=100; %Number of rounds

for q=1:NRounds
    
    pause(0.3);
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
    
     %Number of played games in that round
     Ngames=zeros(NGrid,NGrid);
          
    %% Iterate over all cells in grid x, for index i=1..N and j=1...N
    for i=1:NGrid
        for j=1:NGrid
            %%%HERE: LET PLAY THE PARTICIPANTS AGAINST EACH OTHER
            %%% STILL TO DEFINE, HOW ONE GETS TO COMBATANT WITH INDEX (ig,jg); just neighbourhood of (i,j)?!!!!!!!!!!
            
            %%Play with the whole neighbourhood of player (i,j)!! -> (ig,jg)
        
            
             for k=1:8
                ig = i+mNeigh(k,1);
                jg = j+mNeigh(k,2);
                %Check if the cell is within the grid boundaries
                if (ig>=1&& jg>=1 && ig<=NGrid && jg<=NGrid) %If the place in grid is within the neighbourhood do blablabla
                  
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
  
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
            
                end
             end
            
        end
    end
    
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
 %%%%%Updating all parameters of players%%%%%%%%%%%%
 
  % Iterate over all cells in grid x, for index i=1..N and j=1...N
  for i=1:NGrid
        for j=1:NGrid

            NumberOfNeighA=0;
            NeighDecValA=0;
            
            
            %% Iterate over neighbours... Moore-Neighbourhood
            for k=1:8
                i2 = i+mNeigh(k,1);
                j2 = j+mNeigh(k,2);
                %Check if the cell is within the grid boundaries
                if (i2>=1&& j2>=1 && i2<=NGrid && j2<=NGrid) %If the place in grid is within the neighbourhood do blablabla
                   NumberOfNeighA = NumberOfNeighA + 1;            %Counting neighbours (no periodic boundaries)
                   NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                end
            end
           
            [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA);
       end
    end
    %% %%Save the data somehow and show animated pixle picture demonstrating decisions in each round!!!
  %  imshow(mDecision)
  
  image(mScore)
end
    
%% Show the final score dispersion

   
    
    
    

