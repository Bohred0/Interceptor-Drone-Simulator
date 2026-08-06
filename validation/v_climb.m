clear
clc
close all

par = parameters();
state = statevariables();

dt = 0.001;
T  = 5;

omegaHover = sqrt(par.mass*par.g/(4*par.kf));
omega = 1.1 * omegaHover * ones(4,1);

N = round(T/dt);

etaHist = zeros(6,N+1);
nuHist  = zeros(6,N+1);

etaHist(:,1) = state.eta;
nuHist(:,1)  = state.nu;

for k = 1:N

    state = rk4(state,omega,par,dt);

    etaHist(:,k+1) = state.eta;
    nuHist(:,k+1)  = state.nu;

end

t = 0:dt:T;

figure

plot(t,etaHist(1,:))
hold on
plot(t,etaHist(2,:))
plot(t,etaHist(3,:))

legend('North','East','Down')
xlabel('Time (s)')
ylabel('Position (m)')
grid on

figure

plot(t,rad2deg(etaHist(4,:)))
hold on
plot(t,rad2deg(etaHist(5,:)))
plot(t,rad2deg(etaHist(6,:)))

legend('\phi','\theta','\psi')
ylabel('deg')
grid on

figure

plot(t,nuHist(1,:))
hold on
plot(t,nuHist(2,:))
plot(t,nuHist(3,:))

legend('u','v','w')
grid on

figure

plot(t,rad2deg(nuHist(4,:)))
hold on
plot(t,rad2deg(nuHist(5,:)))
plot(t,rad2deg(nuHist(6,:)))

legend('p','q','r')
ylabel('deg/s')
grid on