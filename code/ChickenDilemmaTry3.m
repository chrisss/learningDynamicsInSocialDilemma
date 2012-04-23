% Christian Dorn 14.4.2012
% General Behavior Simulation for Chicken-Dilemma
% REPLICATOR DYNAMICS (WITH 3 PLAYERS)

%   Player A / Player B / Player C        
%   C Swerve        BSwerve    |  BStraight 
%           ASwerve   1/1/1    |   0/6/0
%          AStraight  6/0/0    |   3/3/0
%   -------------------------------------
%   C Straight      BSwerve    |  BStraight 
%           ASwerve   0/0/6    |   0/3/3
%          AStraight  3/0/3    |  -4/-4/-4


% Start Conditions
pA = 0.5; pB = 0.2; pC = 0.1;                     % Initialize: Probabilities for strategy "Swerve" for each Player

weightMatrixA = [1, 0;6, 3;0, 0;3, -4];     % Characterizes behavior of chicken Dilemma (could be time dependent and/or unsymmetric)
weightMatrixB = [1, 6;0, 3;0, 3;0, -4];
weightMatrixC = [1, 0;0, 0;6, 3;3, -4];

% Expection Values of outcome (numeric)
expectionA = pA*(pB*pC*weightMatrixA(1,1) + (1-pB)*pC*weightMatrixA(1,2) + (1-pC)*pB*weightMatrixA(3,1) + (1-pC)*(1-pB)*weightMatrixA(3,2)) + ...
             (1-pA)*(pB*pC*weightMatrixA(2,1) + (1-pB)*pC*weightMatrixA(2,2) + (1-pC)*pB*weightMatrixA(4,1) + (1-pC)*(1-pB)*weightMatrixA(4,2));
% expectionB = ...
% expectionC = ...

% Expection Values of outcome (symbolic)
%syms a b;
%expectiona = 
%expectionb = 
%expectionc = 

%diffexpectiona = diff(expectiona,a); 
%diffexpectionb = diff(expectionb,b);



hold on;
grid on;
axis([0 1 0 1 0 1]);

for pA = 0:0.1:1

    for pB = 0:0.1:1

        %for pC = 0:0.2:1

            anew = pA;
            bnew = pB;
            cnew = pC;

               for i = 0:100

                     a = anew;
                     b = bnew;
                     c = cnew;

                    % if expectionA changes with increase of pA, pA will be increased (to maximum 1) and
                    % vice versa...

                    x1 = 5*b*c - 7*c - 7*b + 4;     % eval(diffexpectiona); !!! Special case usually use eval(...) !!!
                    x2 = 5*a*c - 7*c - 7*a + 4;     % eval(diffexpectionb);
                    x3 = 5*b*a - 7*a - 7*b + 4;     % eval(diffexpectionc);

                    % set norm of vector to 1/100
                    if (abs(x1) || abs(x2) || abs(x3)) ~= 0
                        if  a >= 0 && a <= 1
                            changepA = x1/(sqrt(x1^2 + x2^2 + x3^2)*100);
                            anew = a + changepA;
                            if anew > 1
                               anew = 1;
                            end
                            if anew < 0
                               anew = 0;
                            end
                        end
                        if b >= 0 && b <=1
                            changepB = x2/(sqrt(x1^2 + x2^2 + x3^2)*100);
                            bnew = b + changepB;
                            if bnew > 1
                               bnew = 1;
                            end
                            if bnew < 0
                               bnew = 0;
                            end
                        end
                        if c >= 0 && c <=1
                            changepC = x3/(sqrt(x1^2 + x2^2 + x3^2)*100);
                            cnew = c + changepC;
                            if cnew > 1
                               cnew = 1;
                            end
                            if cnew < 0
                               cnew = 0;
                            end
                        end
                    end

                    plot3([a,anew],[b,bnew],[c,cnew],'color',[pC 0 pB]);

                end
        %end
    end
    
end

xlabel('pA, probability for A to swerve');
ylabel('pB, probability for B to swerve');
zlabel('pC, probability for C to swerve');