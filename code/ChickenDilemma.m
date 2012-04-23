
% Christian Dorn 4.4.2012
% General Behavior Simulation for Chicken-Dilemma

%   Player A / Player B        
%                  Swerve    Straight 
%           Swerve   1/1       1/3
%          Straight  3/1      -2/-2


pA = 0.5; pB = 0.6; % Probabilities for strategy "Swerve"
steps = 1000;
winA = 0;
winB = 0;
hold on;
   
for k = 1:steps
    
    r1 = rand;
    r2 = rand;
    
    if pA > r1
        if pB > r2
            winA = winA + 1;
            winB = winB + 1;
        else 
            winA = winA + 1;
            winB = winB + 3;
        end
    end
    if pA < r1
        if pB > r2
            winA = winA + 3;
            winB = winB + 1;
        else 
            winA = winA - 2;
            winB = winB - 2;
        end
    end
    

    % Some Change of pA and pB dependent on outcome of other Player
    if winB > winA + 10
        pA = pA - 0.1*pA;
        if pA < 0
            error('pA < 0');
        end
    end
    
    if winA > winB + 10
        pB = pB - 0.001*pB;
        if pB < 0
            error('pA < 0');
        end
    end
    
    % Ploting Amount of Win for Each Player
    plot(k,winA,'blue');
    plot(k,winB,'red');
    
end
  
