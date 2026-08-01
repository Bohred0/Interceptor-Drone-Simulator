function eulerdot=eulerRates(phi,theta,p,q,r)

cphi = cos(phi);
sphi = sin(phi);

cth = cos(theta);
sth = sin(theta);
T= [1 sphi*(sth/cth) cphi*(sth/cth);...
    0 cphi -sphi;...
    0 sphi/cth cphi/cth];
eulerdot=T*[p;q;r];
if abs(cos(theta)) < 1e-6
    warning('Euler-rate transformation is near a singularity (pitch = ±90 deg).');
end