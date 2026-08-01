function S = skewsym(v)
%SKEWSYMMETRIC Computes the skew-symmetric matrix of a 3×1 vector.
%
% Inputs:
%   v - 3×1 vector
%
% Output:
%   S - 3×3 skew-symmetric matrix such that
%       cross(v, x) = S*x
% Ensure input is a column vector
v = v(:);

S = [  0    -v(3)   v(2);
    v(3)    0    -v(1);
    -v(2)  v(1)     0 ];
end