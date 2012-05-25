%%%%%%%%%%%%%Plot everything%%%%%%%%%%%%%%%%%5
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N1
load('experiment1.mat')

figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop1', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime1', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N2

load('experiment2.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop2', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime2', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N3

load('experiment3.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop3', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime3', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N4

load('experiment4.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop4', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime4', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N5

load('experiment5.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop5', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime5', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N6

load('experiment6.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop6', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime6', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N7

load('experiment7.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop7', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime7', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N8

load('experiment8.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop8', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime8', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N9

load('experiment9.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop9', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime9', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N10

load('experiment10.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop10', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime10', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N11

load('experiment11.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop11', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime11', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N12

load('experiment12.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop12', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime12', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N14

load('experiment14.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop14', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime14', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N15

load('experiment15.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop15', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime15', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N16

load('experiment16.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop16', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime16', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N17

load('experiment17.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop17', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime17', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N2

load('experiment18.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop18', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime18', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N19

load('experiment19.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop19', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime19', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N20

load('experiment20.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop20', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime20', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N21a

load('experiment21a.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop21a', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime21a', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N21b

load('experiment21b.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop21b', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime21b', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N22a

load('experiment22a.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop22a', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime22a', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N22b

load('experiment22b.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop22b', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime22b', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
load('experiment30.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop30', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime30', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N2

load('experiment31.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop31', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime31', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N19

load('experiment32.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop32', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime32', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N20

load('experiment33.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop33', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime33', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N21a

load('experiment34a.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop34a', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime34a', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N21b

load('experiment34b.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop34b', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime34b', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N22a

load('experiment35a.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop35a', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime35a', 'pdf')
 
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N22b

load('experiment35b.mat')
figure(1)
subplot(2,1,1)
contourf(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
contourf(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')

 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScoreAndProbCoop35b', 'pdf')

subplot(1,1,1)
round=1:50;
errorbar(round,mean(Ptime1),std(Ptime1))
hold on
errorbar(round,mean(Ptime2),std(Ptime2),'m')
legend('Probability to cooperate of left specific Player','Probability to cooperate of right specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime35b', 'pdf')
 
clear