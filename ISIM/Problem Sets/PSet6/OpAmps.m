data = load("OpenLoop.csv");

time = data(:,1);
C1 = data(:,2);
C2 = data(:,3);

plot(time, C1);
hold on;
plot(time, C2);
title("Voltage over time");
xlabel("time (sec)");
ylabel("Voltage (V)");


figure;
plot(C1, C2);
title("X-Y Plot");
xlabel('${V_{out}}/{ V_{in}}$','Interpreter','latex')
ylabel('Voltage (V)');
