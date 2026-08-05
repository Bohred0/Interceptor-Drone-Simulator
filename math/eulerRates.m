function eulerdot=eulerRates(state)

cphi = cos(state.eta(4));
sphi = sin(state.eta(4));

cth = cos(state.eta(5));
sth = sin(state.eta(5));
T= [1 sphi*(sth/cth) cphi*(sth/cth);...
    0 cphi -sphi;...
    0 sphi/cth cphi/cth];
eulerdot=T*[state.nu(4);state.nu(5);state.nu(6)];
if abs(cos(state.eta(5))) < 1e-6
    warning('Euler-rate transformation is near a singularity (pitch = ±90 deg).');
end
end