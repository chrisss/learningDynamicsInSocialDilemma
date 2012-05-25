function [mStrategy] = initStrat(Strat,NGrid)
%initializing our Strategy matrix

%What mean numbers in Strat-Matrix?:

%Strategy=1: Learning as in paper with high learning rate
%Strategy=2: Learning with high learning rate and peer pressure (80%)
%Strategy=3: Keine Anpassung
%Strategy=4: Learning mit "Gruppendruck" aber taking 3 decisions into
%             account
%Strategy=5: random decisions
%Strategy=6: Learning as in paper with low learning rate


%What do Matrices look like?

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
%Strat=11: outer all strat 3; 1 neighbourhood strat 1
%Strat=12: outer all strat 3; 1 neighbourhood strat 2
%Strat=13: outer all strat 2; 1 neighbourhood strat 3

if Strat==1
    
    mStrategy = ones(NGrid,NGrid);
    
elseif Strat==2
    
    mStrategy = 2*ones(NGrid,NGrid);    
    
elseif Strat==3
    
   mStrategy = 3*ones(NGrid,NGrid);
    
elseif Strat==4
    
   mStrategy = 4*ones(NGrid,NGrid);
    
elseif Strat==5
    
   mStrategy = 5*ones(NGrid,NGrid);
    
elseif Strat==6
    
   mStrategy = 5*ones(NGrid,NGrid);
   i=2;
   j=2;
   mStrategy(i,j)=1;
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
             
                mStrategy(i2,j2)=1;
          
   end


   
elseif Strat==7
    
   mStrategy = 3*ones(NGrid,NGrid);
   i=2;
   j=2;
   mStrategy(i,j)=1;
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
             
                mStrategy(i2,j2)=1;
          
   end
   
elseif Strat==8
    
   mStrategy = 5*ones(NGrid,NGrid);
   i=2;
   j=2;
   mStrategy(i,j)=2;
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
             
                mStrategy(i2,j2)=2;
          
   end
   
   
elseif Strat==9
    
   mStrategy = 3*ones(NGrid,NGrid);
   i=2;
   j=2;
   mStrategy(i,j)=2;
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
             
                mStrategy(i2,j2)=2;
          
   end
   
   

elseif Strat==10
    
   mStrategy = 1*ones(NGrid,NGrid);
   mStrategy(:,1:round(NGrid/2))=6;
   
   
elseif Strat==11
   mStrategy = 3*ones(NGrid,NGrid);
   i=2;
   j=2;
   mStrategy(i,j)=1;
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
             
                mStrategy(i2,j2)=1;
          
   end
   
elseif Strat==12
   mStrategy = 3*ones(NGrid,NGrid);
   i=2;
   j=2;
   mStrategy(i,j)=2;
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
             
                mStrategy(i2,j2)=2;
          
   end
   
elseif Strat==13
   mStrategy = 2*ones(NGrid,NGrid);
   i=2;
   j=2;
   mStrategy(i,j)=3;
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
             
                mStrategy(i2,j2)=3;
          
   end
    
elseif Strat==14
    
        mStrategy=ones(NGrid,NGrid);
        mStrategy((round(NGrid/2)+1):NGrid,1:round(NGrid/2))=3;
        
        
end

