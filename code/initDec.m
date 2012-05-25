function [mDecision] = initDec(Dec,NGrid)
%initializing of different initial Probabilities of Cooperation

%Dec=1; random initial decisions 0 or 1
%Dec=2; first all Cooperate;
%Dec=3; first all deflect;
%Dec=4: mit ProbCoop 4
%Dec=5; outer random, 1 neighbourhood all 1
%Dec=6; outer prob 0.7, 1 neighbourhood all random
%Dec=7; outer 1, 1 neighbourhood all random

if Dec==1
    mDecision=rand(NGrid,NGrid)<0.5;
    
elseif Dec==2
    mDecision=ones(NGrid,NGrid);    
                
elseif Dec==3
    mDecision=zeros(NGrid,NGrid);
    
elseif Dec==4
    v = ones(NGrid,1);
    Prob = zeros(NGrid,NGrid);
    for i = 1:NGrid
    Prob(:,i) = v*abs(sin(2*pi*i/NGrid));
    end
    mDecision = rand>=Prob;
    
elseif Dec==5
  mDecision = rand(NGrid,NGrid)<0.5;
   i=2;
   j=2;
   mDecision(i,j)=1;
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
             
                mDecision(i2,j2)=1;
          
   end   
   
elseif Dec==6
    mDecision = rand(NGrid,NGrid)<0.7;
   i=2;
   j=2;
   mDecision(i,j)=rand<0.5;
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
             
                mDecision(i2,j2)=rand<0.5;
          
   end  
    
elseif Dec==7
   mDecision = ones(NGrid,NGrid);
   i=2;
   j=2;
   mDecision(i,j)=rand<0.5;
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
             
                mDecision(i2,j2)=rand<0.5;
          
   end  
   
elseif Dec==8
    
        mDecision = ones(NGrid,NGrid);
        mDecision(:,1:round(NGrid/2))=0;
        
elseif Dec==9
    
        mDecision=rand(NGrid,NGrid)<0.5;
        mDecision((round(NGrid/2)+1):NGrid,1:round(NGrid/2))=1;
        
elseif Dec==10
    
    mDecision = rand(NGrid,NGrid)<0.2;
   i=2;
   j=2;
   mDecision(i,j)=rand<0.5;
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
             
                mDecision(i2,j2)=rand<0.5;
   end
   
elseif Dec==11

   mDecision = zeros(NGrid,NGrid);
   i=2;
   j=2;
   mDecision(i,j)=rand<0.5;
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
             
                mDecision(i2,j2)=rand<0.5;
   end
        
end

