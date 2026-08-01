function R = rotationMatrix(phi, theta, psi)
%ROTATIONMATRIX Computes the Direction Cosine Matrix (DCM)
%
% Inputs:
%   phi   - Roll angle [rad]
%   theta - Pitch angle [rad]
%   psi   - Yaw angle [rad]
%
% Output:
%   R     - Rotation matrix from NED frame to body frame

cphi = cos(phi);
sphi = sin(phi);

cth = cos(theta);
sth = sin(theta);

cpsi = cos(psi);
spsi = sin(psi);

Rv_v1=[cpsi spsi 0;
      -spsi cpsi 0;
        0 0 1];
Rv1_v2 = [cth 0 -sth;
    0 1 0;
    sth 0 cth];

Rv2_b = [1 0 0;
        0 cphi sphi;
        0 -sphi cphi];

R =  Rv_v1 * Rv1_v2 * Rv2_b ;