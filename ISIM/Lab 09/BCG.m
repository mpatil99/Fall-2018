
data = load("BCG4.csv");
time = data(:,1);
Voltage = data(:,3);

plot(time, Voltage);
xlabel("time(sec)");
ylabel("Voltage(V)");
title("BCG Readout");
xlim([-1,2])
ylim([-2.5,2.5]);
%{
figure;
data4 = load("BCGBode.csv");
time = data4(:,1);
Voltage = data4(:,2);

semilogx(time, Voltage);
xlabel("time(sec)");
ylabel("Voltage(V)");
title("Band Pass Filter Bode Plot");
xlim([.2,100]);

figure;
data4 = load("BCGBode2.csv");
time = data4(:,1);
Voltage = data4(:,3);

semilogx(time, Voltage);
xlabel("time(sec)");
ylabel("Voltage(V)");
title("Sallen-Key Bode Plot");
xlim([1,10]);
%}