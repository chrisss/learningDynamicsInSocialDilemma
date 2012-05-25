function [ Aspiration ] = initAsp( Asp,NGrid)
%initializing of different initial Aspirations

%Asp=1: Here everybody has the mean of the payoff matrix as initial
        %aspiration
%Asp=2: Here everybody has the initial aspiration of 6

%Asp=3: Here everybody has the initial aspiration of 0;

%Asp=4: Left 2, right 4

if Asp==1
           Aspiration=3*ones(NGrid,NGrid);
    
elseif Asp==2
            Aspiration=6*ones(NGrid,NGrid);
            
elseif Asp==3
            Aspiration=0*ones(NGrid,NGrid);
            
elseif Asp==4
            Aspiration = 4*ones(NGrid,NGrid);
            Aspiration(:,1:round(NGrid/2))=2;
           

end

