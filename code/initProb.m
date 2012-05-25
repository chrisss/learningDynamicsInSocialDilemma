function [ mProbCoop] = initProb( Prob,NGrid)
%initializing of different initial Probabilities of Cooperation

%Prob=1; %Initially 50% cooperation, 50% deflection
%Prob=2; random Probabilities from 0 to 1
%Prob=3; Initialy from "left to right" kind of floating probabilitie from
%1/Ngrid to 1
%Prob=4; sinusoidally from left to right
%Prob=5; outer 50/50, 1 neighbourhood always cooperation -> 1
%Prob=6; outer 0.7, 1 neighbourhood 0.5
%Prob=7; outer 1, 1 neighbourhood 0.5
%Prob=8; all 1
%Prob=9; left 0 right 1

if Prob==1
    mProbCoop=0.5*ones(NGrid,NGrid);
    
elseif Prob==2
    mProbCoop=rand(NGrid,NGrid);
    
elseif Prob == 3
    v = ones(NGrid,1)/NGrid;
    mProbCoop = zeros(NGrid,NGrid);
    for i = 1:NGrid
    mProbCoop(:,i) = v*i;
    end
elseif Prob == 4
    v = ones(NGrid,1);
    mProbCoop = zeros(NGrid,NGrid);
    for i = 1:NGrid
    mProbCoop(:,i) = v*abs(sin(2*pi*i/NGrid));
    end
    
elseif Prob==5
    
   mProbCoop = 0.5*ones(NGrid,NGrid);
   i=2;
   j=2;
   mProbCoop(i,j)=1;
   mNeigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0];
  
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
             
                mProbCoop(i2,j2)=1;
          
   end
   
elseif Prob==6
    
   mProbCoop = 0.7*ones(NGrid,NGrid);
   i=2;
   j=2;
   mProbCoop(i,j)=0.5;
   mNeigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0];
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
             
                mProbCoop(i2,j2)=0.5;
          
   end
   
elseif Prob==7
    
   mProbCoop = 1*ones(NGrid,NGrid);
   i=2;
   j=2;
   mProbCoop(i,j)=0.5;
   mNeigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0];
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
             
                mProbCoop(i2,j2)=0.5;
          
   end
   
elseif Prob==8
       
    mProbCoop=ones(NGrid,NGrid);
    
elseif Prob==9
   
            mProbCoop = ones(NGrid,NGrid);
           mProbCoop(:,1:round(NGrid/2))=0;
           
elseif Prob==10
    
    mProbCoop=0.5*ones(NGrid,NGrid);
    mProbCoop((round(NGrid/2)+1):NGrid,1:round(NGrid/2))=1;
        
elseif Prob==11
     
   mProbCoop = 0.2*ones(NGrid,NGrid);
   i=2;
   j=2;
   mProbCoop(i,j)=0.5;
   mNeigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0];
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
             
                mProbCoop(i2,j2)=0.5;
          
   end
   
elseif Prob==12
    
       
   mProbCoop = 0*ones(NGrid,NGrid);
   i=2;
   j=2;
   mProbCoop(i,j)=0.5;
   mNeigh = [-1 -1; 0 -1; 1 -1; 1 0; 1 1; 0 1; -1 1; -1 0];
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
             
                mProbCoop(i2,j2)=0.5;
          
   end
end

