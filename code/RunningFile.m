NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Running through all required%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%experiments!!!%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N1
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,1,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment1.mat
clear

NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N2

for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,2,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment2.mat
clear

NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N3
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,3,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment3.mat
clear

NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N4
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,4,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment4.mat
clear

NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N5
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,5,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment5.mat
clear

NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N6
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,10,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment6.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
6%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N7
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,6,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment7.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
7%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N8
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,7,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment8.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
8%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N9
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,8,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment9.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
9%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N10
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,1,1,9,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment10.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
10%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N11
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(4,1,1,1,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment11.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
11%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N12
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(4,1,1,2,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment12.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=200; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
13%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N14
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(4,1,1,4,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment14.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
14%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N15
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,2,1,1,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment15.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
15%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N16
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,2,1,2,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment16.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
16%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N17
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(3,1,1,2,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment17.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
17%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N18
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,5,5,13,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment18.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
18%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N19
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,4,4,2,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment19.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
19%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N20
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,3,1,2,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment20.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
20%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N21a
requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,6,6,11,NGrid);   
q=1; 
while (q<=NRounds && (0.7-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment21a.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N21b
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);

requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,7,7,11,NGrid);   
q=1; 
while (q<=NRounds && (0.7-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1;
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment21b.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N22a
requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,6,6,12,NGrid);   
q=1; 
while (q<=NRounds && (0.7-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1;
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment22a.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N22b
requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,7,7,12,NGrid);   
q=1;
while (q<=NRounds && (0.7-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1;
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment22b.mat
clear

NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N30
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,8,2,10,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment30.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
18%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N31
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,8,2,1,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment31.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N32
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,9,8,1,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment32.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N33
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,10,9,14,NGrid);   
for q=1:NRounds
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
          end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);  %!!!!!!!!!!Define Coordinates for required player
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment33.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N34a
requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,11,10,11,NGrid);   
q=1; 
while (q<=NRounds && (0.2-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment34a.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N34b
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);

requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,12,11,11,NGrid);   
q=1; 
while (q<=NRounds && (0-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1;
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment34b.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N35a
requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,11,10,12,NGrid);   
q=1; 
while (q<=NRounds && (0.2-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1;
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment35a.mat
clear
NGrid=20;  %Grid size (NGridxNGrid)
NSimulation=40; %Number of Simulations
NRounds=50; %Number of rounds

Pfinal=zeros(NGrid,NGrid); %final Probabilities over all rounds
Sfinal=zeros(NGrid,NGrid); %final Scores over all rounds
Ptime1=zeros(NSimulation,NRounds); %%Probability of specific player!!! DEFINE COORDINATES!
Ptime2=zeros(NSimulation,NRounds);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N35b
requ_rounds=zeros(1,NSimulation);
for l=1:NSimulation
[mPayoff,NGrid,NPlayer,mAspiration,mProbCoop,mScore,mLastScore,mDecision,mNeigh,mStrategy,LastDecision,LastLastDecision,LastLastLastDecision]=Initialization(1,12,11,12,NGrid);   
q=1;
while (q<=NRounds && (0-mean([mProbCoop(2,2) mProbCoop(2,1) mProbCoop(1,1) mProbCoop(1,2) mProbCoop(1,3) mProbCoop(2,3) mProbCoop(3,3) mProbCoop(3,2) mProbCoop(3,1)])> 0.05) )
    actualScore=zeros(NGrid,NGrid); %actual payed-off score
     Ngames=zeros(NGrid,NGrid);
    for i=1:NGrid
        for j=1:NGrid
            for k=1:8
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
            [LastScoreA, LastScoreB]=playfunction(mDecision(i,j),mDecision(ig,jg));
            Ngames(i,j) = Ngames(i,j) + 1;
            Ngames(ig,jg) = Ngames(ig,jg) + 1;
            actualScore(i,j) = actualScore(i,j)+LastScoreA;
            actualScore(ig,jg) = actualScore(ig,jg)+LastScoreB;
           end
        end
    end
    mLastScore=actualScore./Ngames;
    mScore= mScore + mLastScore;               
  for i=1:NGrid
        for j=1:NGrid
            NumberOfNeighA=0;
            NeighDecValA=0;
            NeighDecValtime=0;
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
                NumberOfNeighA = 8;            %Counting neighbours (periodic boundaries)
                NeighDecValA = NeighDecValA + mDecision(i2,j2); %Sum up decisions of neighbours
                NumberOfNeightime = 24;
                NeighDecValtime = NeighDecValtime + mDecision(i2,j2) + LastDecision(i2,j2) + LastLastDecision(i2,j2) + LastLastLastDecision(i2,j2);
           end
           [mAspiration(i,j),mProbCoop(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),LastLastLastDecision(i,j)]=updatefunction(mAspiration(i,j),mProbCoop(i,j),mLastScore(i,j),NeighDecValA,NumberOfNeighA,mStrategy(i,j),mDecision(i,j),LastDecision(i,j),LastLastDecision(i,j),NumberOfNeightime,NeighDecValtime);
        end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Define
a=2;
b=2;
c=17;
d=17;
Ptime1(l,q)= mProbCoop(a,b);  %!!!!!!!!!!Define Coordinates for required player
Ptime2(l,q)= mProbCoop(c,d);
q=q+1;
requ_rounds(l)=requ_rounds(l)+1;
end
Pfinal = Pfinal + mProbCoop; %final Probabilities over all rounds
Sfinal = Sfinal + mScore; %final Scores over all rounds
end
Pfinal = Pfinal/NSimulation;
Sfinal = Sfinal/NSimulation;
Ptimefinal1 = sum(Ptime1)/NSimulation;
Ptimefinal2 = sum(Ptime2)/NSimulation;
requ_roundsfinal = sum(requ_rounds)/NSimulation;
%plotfunction(Pfinal,Sfinal,Ptime,Ptimefinal);

save experiment35b.mat
clear