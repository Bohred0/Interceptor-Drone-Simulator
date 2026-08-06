function K=posnRates(state)

R = rotationMatrix(state);
K = R.' * state.nu(1:3);
