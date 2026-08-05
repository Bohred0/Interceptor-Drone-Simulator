function vdot=translationalDynamics(state,omega,par)
[Fr,~]=rotorForcesMoments(omega,par);
Fg=Gforce(state,par);

vdot=(Fg+Fr-cross(state.nu(4:6),par.mass*state.nu(1:3)))/par.mass;