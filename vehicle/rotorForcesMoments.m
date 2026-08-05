function [F,M] = rotorForcesMoments(omega,par)

F = zeros(3,1);
M = zeros(3,1);

Ti = par.kf * omega.^2;

for i = 1:4

    % Rotor thrust force
    Fi = Ti(i) * par.rotorAxis(:,i);

    F = F + Fi;

    % Moment due to rotor position
    Mi = cross(par.rotorPos(:,i), Fi);

    % Add reaction (drag) torque
    Mi = Mi + [0;
               0;
               par.rotorDir(i) * par.km * omega(i)^2];

    M = M + Mi;

end

end