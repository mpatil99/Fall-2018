
clear;
clf;
w = logspace(3.5,9);
R1 = 4000;
R2 = 40000;
C1 = 1e-9;
C2 = 1e-10;

data = load("UltraBode0.csv");
freq = data(:,1);
c2 = data(:,3);


data1 = load("UltraBode.csv");
freq1 = data1(:,1);
c21 = data1(:,3);
z1 = R1;
z2 = 1./((sqrt(-1).*w.*C2));
Vout1 = -z2./z1;

%loglog(w, abs(Vout1).*abs(Vout1)*41);
hold on;
loglog(w, abs(Vout1));
print(abs(Vout1));
%loglog(w, abs(z1).*abs(z1)*41);
%loglog(w, abs(z2));
%loglog(w, 1000-abs(z1));
%semilogx(freq,c2);
%hold on;
%semilogx(freq1,c21)
title("Plot 1",'Interpreter','latex');
xlabel("Frequency (Hz)", 'Interpreter', 'latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex');
legend();