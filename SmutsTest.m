clear all
clf
clc

nbrOfRuns = 10;
saveData = zeros(nbrOfRuns, 4);
for run = 1:nbrOfRuns
    ResetGlobalVar();
    InitializePostion();
    InitializeTheta();
    vector = InitializeRV();
    data = Path(vector);
    
    saveData(run,:) = data;
    summa = sum(saveData)/nbrOfRuns;
    medelTurn = summa(1);
    medelTime = summa(2);
    medelPathLength = summa(3);
    medelProcent = summa(4);
    disp(['Medel Turn: ', num2str(medelTurn)])
    disp(['Medel Time: ', num2str(medelTime)])
    disp(['Medel Path Length: ', num2str(medelPathLength)])
    disp(['Medel Procent: ', num2str(medelProcent)])
end
%%
PlotSim();

%%1. Roboten f�r en startposition
%%2. Ber�kna riktningsvektor
%%3. R�knar ut v�gen
%%4a. Roboten k�r fram tills kant (+1 i varje grid)
%%4b. Kunna v�nda och k�r vidare
%4c. Acceleration/Deacceleration vid kanterna (Kolla n�r den m�ste b�rja
%    stanna in, vid ny theta m�ste hastighete vara 0
%%5. R�kna ut procentdel i matrisen som har siffror skiljt fr�n 0
% - Om procentdelen �r mindre �n X%
%%7a. Roboten uppdatera theta
%8a. G�r om 3-5
% - else
%%7b. Skriv ut resultaten
%%8b. Plotta grid-matrisen
% Klar! :)