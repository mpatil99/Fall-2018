clear;
clf;

data = load('Humidity.csv');
capacitance = data(:,1);
voltage = data(:,2);

hold on;
scatter(capacitance, voltage, 'filled');
plot(capacitance, polyval(polyfit(capacitance, voltage,1),capacitance));
title('Voltage vs. Capacitance');
xlabel('Capacitance (C)');
ylabel('Voltage (V)');
legend('Capacitance Data', 'V = .84101*C +93.485');
hold off;

figure;
data2 = load("Humidity220.csv");
time = data2(:,1) + 0.00012270000000000003;
voltage = data2(:,2);
voltage2 = data2(:,3);
hold on;
plot(time,voltage);
plot(time,voltage2);
title('Voltage over Time');
legend('Inupt: 1 Volt Square Wave', 'Output: Voltage over resistor');
xlabel('time(sec)');
ylabel('Voltage(V)');
