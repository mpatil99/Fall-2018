clear;
clf;

data = load("dvdt.csv");
dt = data(:,1);
Vin = data(:,2);
dvdt = data(:,3);
I = (Vin)/1000000;

dvdt =(dvdt*.0000001);
scatter(I,dvdt);
hold on;
fplot(@(x) x,[0,.000003], "b")
fplot(@(x) x*(1.2),[0,.000003],"r")
fplot(@(x) x*(.8),[0,.000003], "r")
title("Verification of Basic Capacitor Law");
xlabel("Current ($\frac{V_{in}-2.5}{R}$)",'Interpreter','latex')
ylabel("$C*\frac{dv}{dt}$",'Interpreter','latex');
legend("Input Data","y = x", "y = x\pm1%");


figure;
data = load("Lab07.csv");
C1 = data(:,1);
C2 = data(:,2);

I = (2.5 - C1 )/100;
plot(C2, I);
ylabel("Current (I)");
xlabel("Voltage (V)");
legend("I-V curve");
title("Diode I-V characteristic");


