clear;  % clear the memory
clf;    % clear the figure to start new

Angle    = [-80;   -60;  -40; -20;     0;    20;   40;  60;    80];   %% enter data by hand - change to your numbers 
Voltage  = [.247; .288; .336; .388; .477; .513; .561; .599; .654];  %% enter data by hand - change to your numbers


plot(Voltage,Angle,'*');  % plot data as * points
hold on;                  % hold the plot so that the next one will overlay

AngleCal = (Voltage-2.52)*42;   %% The linear calibration curve. Numbers were selected by hand to get a good fit
%plot(Voltage, AngleCal,'r')

xlabel('Voltage (Volts)')
ylabel('Angle (degrees)')
title('Angle vs. Vout')