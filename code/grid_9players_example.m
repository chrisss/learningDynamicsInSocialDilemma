function [Awin] = grid_9players_example()

% Number of iterations
steps = 500;

Awin = zeros(3,3);

v = zeros(9,500);


%                             Player A
%                         Swerve    Straight
%            Swerve       2/2         3/0
%  Player B    
%           Straight      0/3        -3/-3
% 
%

%(Initial) Probability Matrix to swerve, P-MATRIX
%P = [1,1,1;1,1,1;1,0,0];
P = ones(3,3)*1/2; 

% Example that inner wins less than outsiders because more cooperation swerve
%P = ones(3,3)*4/5; % Example for innter wins more than outsiders because outsiders do not cooperate to each others
%P(2,2) = 0;  

% EXAMPLE
% [as an example it could be assumed a highway on which one car drives 
% straight without taking care of others - he will profit in case of
% all others swerve. But if just one swerves, he will be the one taking
% out most output. assume P = [1,1,1;1,1,1;0,1,0];  

% Initialize Strategy Matrix
S = ones(3,3);
% Initialize past Strategy Matrix
Sp = ones(3,3);
% Initialize second past Strategy Matrix
Sp2 = ones(3,3);


% Function which defines win out of stategies of the players, win is the win of
% player a
function fwin = play(a,b)
    
    if a > 2 || a < 1
        error('invalid value of strategy');
    end
    if b > 2 || b < 1
        error('invalid value of strategy');
    end
    
    % 1 is swerve, 2 is straight
    if a > b
        fwin = 3;
   
    elseif b > a
        fwin = 0;
        
    else 
            if a == 1
                fwin = 2;
            else 
                fwin = -3;
            end
    end
end
    


for t = 1:steps
    
    % Actualization of strategies
    Sp2 = Sp;
    Sp  = S;
    
    % Choose strategy dependent on probability behavior
    for j = 1:3
        for i =1:3
            if rand > P(j,i)
                S(j,i) = 2;
            else
                S(j,i) = 1;
            end
            
        end
    end
  
  
    
    % Actualization of P-MATRIX
    Q = (S + Sp + Sp2)/3;
    summe = sum(sum(Q));
    for j = 1:3
        for i = 1:3
            % F E H L E R IN KR IT ER I UM
                 
                
                if P(i,j) > 0
                    if (summe - Q(i,j))/8 < Q(i,j)
                        P(i,j) = P(i,j) - 0.1;
                        
                    end
                end
                if P(i,j) < 1
                    if (summe - Q(i,j))/8 > Q(i,j)
                        P(i,j) = P(i,j) + 0.1;
                        
                    end
                
                end
                 
                
          
            
            
            
        end
    end
    
    % Fill v with values of P for plot()
    v(1:3,t) = P(:,1);
    v(4:6,t) = P(:,2);
    v(7:9,t) = P(:,3);
    
    % Define neighbours coordinates
    for j = 1:3
        for i = 1:3
            
            %Coordinates to neighbours, vertical
            aj = j-1;
            if aj == 0
                aj = 3;
            end
            bj = j;
            cj = j+1;
            if cj == 4
                cj = 1;
            end
            
            vj = [aj,bj,cj];
            
            %Coordinates to neighbours, horizontal
            ai = i-1;
            if ai == 0
                ai = 3;
            end
            bi = i;
            ci = i+1;
            if ci == 4
                ci = 1;
            end
            
            vi = [ai,bi,ci];
            
            win = 0;
            for n = 1:3
               for m = 1:3
                   if m ~= 2 || n ~= 2              % exlclude case of player playing with himself
                    win = win + play(S(j,i),S(vj(n),vi(m)));
                   end
               end
            end
            
            Awin(j,i) = Awin(j,i) + win/8;
            
            
            
        end
    end
    
    


    clf;                                % Clear figure
    imagesc(Awin);                      % Display grid
    pause(0.01);                        % Pause for 0.01 s
    %colormap([1 0 0; 0 1 0; 0 0 1]);    % Define colors: Red, Green, Blue

end


for n = 1:9
    plot(v(n,:));
    hold on;
end

end