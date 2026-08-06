function statedot=stateDerivative(state,par,omega)
posDot=posnRates(state);
eulerdot=eulerRates(state);
vdot=translationalDynamics(state,omega,par);
omegadot=rotationalDynamics(state,omega,par);
statedot.eta=[posDot;eulerdot];
statedot.nu=[vdot;omegadot];
end