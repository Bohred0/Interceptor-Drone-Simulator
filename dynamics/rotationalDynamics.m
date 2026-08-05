function wdot=rotationalDynamics(state,omega,par)
[~,M]=rotorForcesMoments(omega,par);
omegaGamma=omega(1)+omega(3)-omega(2)-omega(4);
Gyro=par.Im*omegaGamma*cross(state.nu(4:6),[0;0;1]);

wdot=par.I\(M - Gyro - cross(state.nu(4:6),par.I*state.nu(4:6)));
