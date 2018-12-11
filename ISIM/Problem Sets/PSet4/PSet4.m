clf;
clear;
lowPassBH = load("PSet4LowPass.csv");
lowPassNet = load("Pset4BodeLowPass.csv");
highPassBH  = load("PSet4HighPass.csv");
highPassNet = load("Pset4BodeHighPass.csv");


lpBH_Hz = lowPassBH(:,1);
lpBH_Amp_theo = lowPassBH(:,4);
lpBH_Amp_meas = lowPassBH(:,5);
lpBH_PS_theo = lowPassBH(:,6);
lpBH_PS_meas = lowPassBH(:,8);

subplot(2,1,1);
hold on;
loglog(lpBH_Hz, lpBH_Amp_meas);
loglog(lpBH_Hz, lpBH_Amp_theo);
legend('Measured', 'Theoretical');
title('Amplitude over frequency');
xlabel('\omega (rad/s)');
ylabel('Amplitude(A)');
hold off;

subplot(2,1,2);
hold on;
loglog(lpBH_Hz, lpBH_PS_meas);
loglog(lpBH_Hz, lpBH_PS_theo);
legend('Measured', 'Theoretical');
title('Phase Shift over frequency');
xlabel('\omega (rad/s)');
ylabel('Amplitude(A)');
hold off;




figure();
lpNet_Hz = lowPassNet(:,1);
lpNet_Amp = lowPassNet(:,3);
lpNet_PS = lowPassNet(:,4);

subplot(2,1,1);
semilogx(lpNet_Hz, lpNet_Amp);
legend('Measured');
title('Amplitude over frequency');
xlabel('\omega (rad/s)');
ylabel('Amplitude(A)');
subplot(2,1,2);
semilogx(lpNet_Hz, lpNet_PS);
legend('Measured');
title('Phase shift over frequency');
xlabel('\omega (rad/s)');
ylabel('Phase(\Phi)');


figure;
hpBH_Hz = highPassBH(:,1);
hpBH_Amp_theo = highPassBH(:,4);
hpBH_Amp_meas = highPassBH(:,5);
hpBH_PS_theo = highPassBH(:,6);
hpBH_PS_meas = highPassBH(:,8);

subplot(2,1,1);
hold on;
semilogx(hpBH_Hz, hpBH_Amp_meas);
semilogx(hpBH_Hz, hpBH_Amp_theo);
legend('Measured', 'Theoretical');
title('Amplitude over frequency');
xlabel('\omega (rad/s)');
ylabel('Amplitude(A)');
hold off;

subplot(2,1,2);
hold on;
semilogx(lpBH_Hz, lpBH_PS_meas);
semilogx(lpBH_Hz, lpBH_PS_theo);
legend('Measured', 'Theoretical');
title('Phase shift over frequency');
xlabel('\omega (rad/s)');
ylabel('Phase(\Phi)');

hold off;



figure();
hpNet_Hz = highPassNet(:,1);
hpNet_Amp = highPassNet(:,3);
hpNet_PS = highPassNet(:,4);

subplot(2,1,1);
semilogx(hpNet_Hz, hpNet_Amp);
legend('Measured');
title('Amplitude over frequency');
xlabel('\omega (rad/s)');
ylabel('Amplitude(A)');
subplot(2,1,2);
semilogx(hpNet_Hz, hpNet_PS);
legend('Measured');
title('Phase shift over frequency');
xlabel('\omega (rad/s)');
ylabel('Phase(\Phi)');




 
 