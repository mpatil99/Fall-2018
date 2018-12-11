clf;
clear;
data1 = load("BodePlot1.csv");
data2 = load("BodePlot2.csv");
data3 = load("BodePlot3.csv");
data4 = load("BodePlot4.csv");
data5 = load("BodePlot5.csv");

freq1 = data1(:,1);
amp1 = data1(:,3);
pshift1 = data1(:,4);


semilogx(freq1, amp1);
hold on;
RC = 0.000158;

fplot(@(x) 20 * log10(1/(1+ (RC*2*pi*x).^2)),[0,100000])
title("Amplitude vs. Frequency");
ylabel("Amplitude(dB)");
xlabel("Frequency(Hz)");
legend("Amplitude(Experimental)", "Amplitude(Theoretical)");


figure;
freq2 = data2(:,1);
amp2 = data2(:,3);
pshift2 = data2(:,4);

semilogx(freq2, amp2);
hold on;
RC = 0.000158;

fplot(@(x) 20 * log10(1/(1+ (RC*2*pi*x).^2)),[0,100000])
title("Amplitude vs. Frequency");
ylabel("Amplitude(dB)");
xlabel("Frequency(Hz)");
legend("Amplitude(Experimental)", "Amplitude(Theoretical)");


figure;
freq3 = data3(:,1);
amp3 = data3(:,3);
pshift3 = data3(:,4);

semilogx(freq3, amp3);
hold on;
RC = 0.000158;

fplot(@(x) 20 * log10(1/(1+ (RC*2*pi*x).^2)),[0,100000])
title("Amplitude vs. Frequency");
ylabel("Amplitude(dB)");
xlabel("Frequency(Hz)");
legend("Amplitude(Experimental)", "Amplitude(Theoretical)");


figure;

freq4 = data4(:,1);
amp4 = data4(:,3);
pshift4 = data4(:,4);

semilogx(freq4, amp4);
hold on;
RC = 0.000158;

fplot(@(x) 20 * log10((RC*2*pi*x).^2/(1+ (RC*2*pi*x).^2)),[0,100000])
title("Amplitude vs. Frequency");
ylabel("Amplitude(dB)");
xlabel("Frequency(Hz)");
legend("Amplitude(Experimental)", "Amplitude(Theoretical)");


figure;
freq5 = data5(:,1);
amp5 = data5(:,3);
pshift5 = data5(:,4);

semilogx(freq5, amp5);

hold on;
RC = 0.000158;

fplot(@(x) 20 * log10((1/(1+ (RC*2*pi*x).^2))*((RC*2*pi*x).^2/(1+ (RC*2*pi*x).^2))),[0,100000])
title("Amplitude vs. Frequency");
ylabel("Amplitude(dB)");
xlabel("Frequency(Hz)");
legend("Amplitude(Experimental)", "Amplitude(Theoretical)")
