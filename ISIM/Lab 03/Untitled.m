clf;
clear;
data = load("Capacitor.csv");
time = data(:,1)+5-1.059+.2225;
voltage = data(:,2);

%{
hold on
plot(time, voltage)
plot(time, 5* exp(-time));
legend('Voltage(Experimental)', 'Voltage(Theoretical)');
title('Voltage Dissapation');
xlabel('time(sec)');
ylabel('Voltage(V)');

ylim([0,5]);
xlim([0,10]);

hold off
%}
%{
hold on
plot(time, 5*exp(-time));
RC = 1.616-.5935;
plot(time, 5/RC*exp(-time/RC));
legend('Current(Experimental)', 'Current(Theoretical)');
title('Current over time');
xlabel('time(sec)');
ylabel('Current(A)');
hold off;
%}
loglog([500	1e3	2e3 5e3	1e4	5e4	1e5	2e5], [498 492 422 220 125 25 13 6]);
title('\Delta Voltage over capcitor');
xlabel('V\_ in Frequency(Hz)');
ylabel('Voltage over Capcitor(V)');
legend('data');