
% Christian Dorn 4.4.2012
% General Behavior Simulation for Chicken-Dilemma
% REPLICATOR DYNAMICS

%   Player A / Player B        
%                  Swerve    Straight 
%           Swerve   1/1       1/3
%          Straight  3/1      -2/-2


% Start Conditions
pA = 0.2; pB = 0.5;           % Probabilities for strategy "Swerve" for each Player
steps = 100;
delta = 0.001;                % Progress in change of probability
weightMatrixA = [1, 1;3, -2]; % Characterizes behavior of chicken Dilemma (could be time dependent and/or unsymmetric)
weightMatrixB = [1, 3;1, -2]; 

% Expection Values of outcome (numeric)
expectionA = pB*(pA*weightMatrixA(1,1) + (1-pA)*weightMatrixA(2,1)) + (1-pB)*(pA*weightMatrixA(1,2) + (1-pA)*weightMatrixA(2,2));
expectionB = pA*(pB*weightMatrixB(1,1) + (1-pB)*weightMatrixB(1,2)) + (1-pA)*(pB*weightMatrixB(2,1) + (1-pB)*weightMatrixB(2,2));

% Expection Values of outcome (symbolic)
syms a b;
expectiona = b*(a*weightMatrixA(1,1) + (1-a)*weightMatrixA(2,1)) + (1 - b)*(a*weightMatrixA(1,2) + (1-a)*weightMatrixA(2,2));
expectionb = a*(b*weightMatrixB(1,1) + (1-b)*weightMatrixB(1,2)) + (1 - a)*(b*weightMatrixB(2,1) + (1-b)*weightMatrixB(2,2));

diffexpectiona = diff(expectiona,a);
diffexpectionb = diff(expectionb,b);


% Initialization
vpA = zeros(1,2);
vpB = zeros(1,2);


hold on;
axis([0 1 0 1]);

for pA = 0:0.01:1

   for pB = 0:0.01:1
        
         a = pA;
         b = pB;

        % if expectionA changes with increase of pA, pA will be increased (to maximum 1) and
        % vice versa...
        x1 = 3 - 5*b;% eval(diffexpectiona); !!! Special case usually use eval(...) !!!
        x2 = 3 - 5*a;% eval(diffexpectionb);

        % set norm of vector to 1/100
        if (abs(x1) || abs(x2)) ~= 0
            if  a >= 0 && a <= 1
                changepA = x1/(sqrt(x1^2 + x2^2)*100);
            end
            if b >= 0 && b <=1
                changepB = x2/(sqrt(x1^2 + x2^2)*100);
            end
        end

        anew = a + changepA;
        bnew = b + changepB;
        
        vpA(1) = a;
        vpA(2) = anew;
        vpB(1) = b;
        vpB(2) = bnew;


        plot(vpA,vpB);
    end

end

xlabel('pA, probability for A to swerve');
ylabel('pB, probability for B to swerve');

