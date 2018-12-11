clear;
clf;

blipdata = load("SingleBlip.csv");
time = blipdata(:,1);
C1 = blipdata(:,2);
C2 = blipdata(:,3);

plot(time,C1);
hold on;
plot(time,C2);
hold off;

title("Single Blip",'Interpreter','latex');
ylabel("Voltage (V)",'Interpreter','latex');
xlabel("time (ms)",'Interpreter','latex');
saveas(gcf, "SingleBlip.jpg");
%{


blipdata = load("UltraRange.csv");
distance = blipdata(:,1);
time = blipdata(:,2);


scatter(distance, time/2);
hold on;
plot(distance, polyval(polyfit(distance, time/2,1),distance));

xlim([0,7]);
ylim([0,7]);
title("Measured Distance vs. Known Distance",'Interpreter','latex');
ylabel("Measure Distance (m)",'Interpreter','latex');
xlabel("Known Distance (m)",'Interpreter','latex');
saveas(gcf, "Measured vs. Known.jpg");
%}