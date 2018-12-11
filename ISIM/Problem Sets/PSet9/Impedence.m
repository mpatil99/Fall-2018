R1 = 1000;
R2 = 10000;
C1 = .000001;
C2 = .0000001;

w = logspace(0,6);

subplot(2,1,1);
z1 = R1;
z2 = 1./(sqrt(-1).*w.*C1);
Vout1 = -z2./z1;
loglog(w, abs(Vout1));
title("Plot 1",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure(2);
subplot(2,1,1);
z1 = R1;
z2 = 1./(1./R2 + (sqrt(-1).*w.*C2));
Vout1 = -z2./z1;
loglog(w, abs(Vout1));
title("Plot 2",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure(3);
subplot(2,1,1);
z1 = 1./(sqrt(-1).*w.*C1);
z2 = R1;
Vout1 = -z2./z1;
loglog(w, abs(Vout1));
title("Plot 3",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure(4);
subplot(2,1,1);
z1 = R1 + 1./(sqrt(-1).*w.*C1);
z2 = 1./(1./R2 + (sqrt(-1).*w.*C2));
Vout1 = -z2./z1;
loglog(w, abs(Vout1));
title("Plot 4",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure(5);
subplot(2,1,1);
z1 = R1;
z2 = 1./(1./R2 + (sqrt(-1).*w.*C2));
Vout1 = z2./(z1+z2);
loglog(w, abs(Vout1));
title("Plot 5",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure(6);
z1 = R1;
z2 = 1./(sqrt(-1).*w.*C1);
z3 = R2;
z4 = 1./(sqrt(-1).*w.*C2);
Vout1 = (z2./(z1+z2)).*(z4./(z3+z4));
subplot(2,1,1);
loglog(w, abs(Vout1));
title("Plot 6",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure(7);
z1 = R2;
z2 = 1./(sqrt(-1).*w.*C2);
z3 = R1;
z4 = 1./(sqrt(-1).*w.*C1);
Vout1 = (z2./(z1+z2)).*(z4./(z3+z4));
subplot(2,1,1);
loglog(w, abs(Vout1));
title("Plot 7",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure(8);
z1 = R2;
z2 = 1./(sqrt(-1).*w.*C2);
z3 = 1./(sqrt(-1).*w.*C1);
z4 = R1;
Vout1 = (z2./(z1+z2)).*(z4./(z3+z4));
subplot(2,1,1)
loglog(w, abs(Vout1));
title("Plot 8",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(Vout1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');
