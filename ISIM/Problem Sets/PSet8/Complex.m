clf;
clear;
w = logspace(-3,3,1000);
z1 = 1./sqrt(1+sqrt(-1.)*w);
z2 = (w*sqrt(-1))./(1+sqrt(-1)*w);
subplot(2,1,1);
loglog(w, abs(z1));
title("Low Pass Filter",'Interpreter','latex');
ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(z1)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');

figure;
subplot(2,1,1);
loglog(w, abs(z2));
title("High Pass Filter",'Interpreter','latex');

ylabel('Amplitude (${V_{out}}/{ V_{in} }$)','Interpreter','latex')
subplot(2,1,2);
semilogx(w,angle(z2)*180/pi);
ylabel("Phase Shift",'Interpreter','latex');
xlabel("Frequency (Hz)",'Interpreter','latex');