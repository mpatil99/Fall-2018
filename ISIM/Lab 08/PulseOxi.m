clear;
clf;

data1 = load("Lab08-1.csv");
data2 = load("Lab08-2.csv");

time2 = data2(:,1);
time2 = time2 - time2(1);
V1 = data2(:,2);
V2 = data2(:,3);
plot(time2, V1);
plot(time2,V2);
title("Pulse Oximeter Reading");
xlabel("time(sec)");
ylabel("Voltage(V)");