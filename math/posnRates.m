function K=posnRates(state)

R = rotationMatrix(state.eta(4), state.eta(5), state.eta(6));
K = R.' * state.nu(1:3);
