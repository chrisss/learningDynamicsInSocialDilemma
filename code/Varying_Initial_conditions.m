%% ****************Varying Initial Conditions********************* %%

%%Grundsätzliche Matrix gefüllt mit Einsen
B=ones(NGrid,NGrid);


%%Hälfte der Matrix
B(1:round(NGrid/2),:);    %obere Hälfte der Matrix

B((round(NGrid/2)+1):NGrid,:) %untere Hälfte der Matrix

B(:,1:round(NGrid/2));    %linke Hälfte der Matrix

B(:,(round(NGrid/2)+1):NGrid);    %rechte Hälfte der Matrix


%%Quadranten der Matrix
B(1:round(NGrid/2),1:round(NGrid/2)); %1. Quadrant

B(1:round(NGrid/2),(round(NGrid/2)+1):NGrid,); %2. Quadrant


%%"Strasse in Mitte"
B(:,round(NGrid/2)); %Trennende Linie in Mitte vertikal

B(round(NGrid/2),:); %Trennende Linie in Mitte horizontal


%%Diagonale Hälfte
for i=1:NGrid     %Diagonale Hälfte rechts oben
B(1:i,i);         

end


for i=1:NGrid      %Diagonale Hälfte links oben
B(i,1:(NGrid+1-i));

end


%%Grösse einer  neighbourhood um i,j
B(i,j);
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
             
                B(i2,j2);
          
end

