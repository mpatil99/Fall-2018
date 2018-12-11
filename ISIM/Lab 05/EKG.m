clf;
clear;
%{
data = load("EKG.csv");
freq = data(:,1);
amp = data(:,3);
pshift = data(:,4);

subplot(2,1,1);
semilogx(freq, amp);
title("Amplitude vs. Freq.");
xlabel("Frequency (Hz)");
ylabel("Amplitude (dB)");

subplot(2,1,2);
semilogx(freq,pshift);
title("Phase Shift vs. Freq.");
xlabel("Frequency (Hz)");
ylabel("Phase Shift (\circ)");
%}

data = load("EKGHeart.csv")+5;
time = data(:,1);
voltage = data(:,2);
plot(time,voltage);
xlim([0,5]);
ylim([4.5,6]);
title("EKG Reading");
ylabel("Voltage(V)");
xlabel("time(sec)");
legend("Heartbeat");


