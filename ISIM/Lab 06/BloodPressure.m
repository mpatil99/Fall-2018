import pyplot.*;
clf;
clear;
BPP = load("BPPerfect.csv");
BPM = load("BPMe.csv");
BPBP = load("BPBP.csv");

time_BPP = BPP(:,1);
time_BPP = time_BPP- time_BPP(1);
C1_BPP = BPP(:,2);
C2_BPP = BPP(:,3);
Pressure1 = (((C1_BPP/5)-.04)/.018)*7.5;
Pressure2 = (((C2_BPP/5)-.04)/.018)*7.5;


plot(time_BPP, Pressure1);
hold on;
plot(time_BPP, Pressure2);
title("Given Data");
xlabel("time (sec)");
ylabel("Voltage(V)");
xlim([0,58]);
hold off;

figure;
time_BPM = BPM(:,1);
time_BPM = time_BPM- time_BPM(1)-11;
C1_BPM = BPM(:,2);
C2_BPM = BPM(:,3);

Pressure1M = (((C1_BPM/5)-.04)/.018)*7.5;
Pressure2M = (((C2_BPM/5)-.04)/.018)*7.5;


plot(time_BPM, Pressure1M);
hold on;
plot(time_BPM, Pressure2M);
title("My Blood Pressure");
xlabel("time (sec)");
ylabel("Voltage(V)");
xlim([0,47])
hold off;

figure;
freq = BPBP(:,1);
C1 = BPBP(:,2);
C2 = BPBP(:,3);

V = C2/C1;
loglog(freq, V);
hold on;
y1=get(gca,'ylim');
plot([1 1],y1, 'r');
legend("Bode Plot","Cutoff Frequency");
title("Blood Pressue Bode Plot");
xlabel("Frequency (Hz)");
ylabel("Amplitude");
hold off;

