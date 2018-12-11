clear;   %% clears memory - useful if you run many scripts in the same session
clf;
data  = load('Coffee.csv');   % test2.csv is exported from Waveforms. It contains only data. The contents of the file are stored in a variable called data which will be a table with three columns 
time  = data(:,1)+210;           % stores the 1st column of data in a variable called time - the : means take all rows, the 1 means 1st column
V1    = data(:,2);           % stores the 2nd column of data in a variable called V1   - the : means take all rows, the 2 means 2nd column
V2    = data(:,3);           % stores the 3rd column of data in a variable called V2   - the : means take all rows, the 3 means 3rd column

R1 = (1000*V1)./(5.19-V1);
R2 = (1000*V2)./(5.19-V2);
T1 = 1./(1/298+ log(R1/1000)/3528);
T2 = 1./(1/298+ log(R2/1000)/3528); % convert voltage to angle (the numbers are made up)
plot(time,T1)
hold on
plot(time,T2)
T3 = 298 + (324.7 - 298)* exp(- time / 2600);
plot (time,T3)

legend('Milk added at Coffee Shop', 'Milk added at Destination', 'T3 = 298 + (324.7 - 298)* e^{- t / \tau}')
title('Temperature of Coffee with milk added at different times')

xlabel('time (seconds)');    % add x axis label - can also add by point and click on the figure
ylabel('Temperature (\circ Kelvin)');   % add y axis label - can also add by point and click on the figure


hold off
