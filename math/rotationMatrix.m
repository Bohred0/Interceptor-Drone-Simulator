function R = rotationMatrix(state)
%ROTATIONMATRIX Computes the Direction Cosine Matrix (DCM)
%
% Inputs:
%   phi   - Roll angle [rad]
%   theta - Pitch angle [rad]
%   psi   - Yaw angle [rad]
%
% Output:
%   R     - Rotation matrix from NED frame to body frame

cphi = cos(state.eta(4));
sphi = sin(state.eta(4));

cth = cos(state.eta(5));
sth = sin(state.eta(5));

cpsi = cos(state.eta(6));
spsi = sin(state.eta(6));

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