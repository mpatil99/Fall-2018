clear;
clf;
data = load('StrainGuage.csv'); %Get Data from CSV file
weight = data(:,1); %Input Data from table
unloaded = data(:,2);
loaded = data(:,3);

%Calculate voltage change from respective unloaded states
voltage = loaded - unloaded;
hold on;
scatter(weight, voltage, 'filled'); %plot data

fit = polyfit(weight, voltage, 1);
plot(x,polyval(fit,weight), 'r');

xlabel('Mass (Grams)');
ylabel('\Delta Voltage (mV)');
title('Change in Voltage with respect to mass');
legend('Voltage', 'V = 5.1036*m -18.094');



