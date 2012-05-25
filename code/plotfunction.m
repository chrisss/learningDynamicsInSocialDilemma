
function []=plotfunctionP(Pfinal,Sfinal,Ptime,Ptimefinal)

%figure(1)
%contourf(Pfinal)
%colormap cool

figure(1)
subplot(2,1,1)
imagesc(Pfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Probability to Cooperate')

subplot(2,1,2)
imagesc(Sfinal);
colormap(jet(10));
colormap hot
colorbar('Location','EastOutside');
ylabel('final Score')


 set(gcf, 'PaperPosition', [0 0 20 20]);
 set(gcf, 'PaperSize', [20 20]);
 saveas(gcf, 'FinalScore', 'pdf')

subplot(1,1,1)
round=1:20;
errorbar(round,mean(Ptime),std(Ptime))
legend('Probability to cooperate of one specific Player')
xlabel('Round')
ylabel('Probability of Cooperation')
axis([1 20 0 1])

 set(gcf, 'PaperPosition', [0 0 20 10]);
 set(gcf, 'PaperSize', [20 10]);
 saveas(gcf, 'ProbCoopwithtime', 'pdf')


%figure(1)
%imagesc(Pfinal)
%colormap cool

%figure(2)
%imagesc(Sfinal)

%figure(3)
%x=1:NRounds;

%errorbar(x,mean(Ptime),std(Ptime))
%set(gca,'FontSize',16)
%xlabel('Number of Round')
%ylabel('Probability of Cooperation')




end