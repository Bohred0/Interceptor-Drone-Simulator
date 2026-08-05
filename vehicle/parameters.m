function par=parameters()
par.mass= 0.468;%placeholder
par.g=9.81;
par.Im=3.357e-5;%placeholder
par.arml=0.225;%placeholder
par.kf=2.98e-6;%placeholder
par.km=1.14e-7;%placeholder
par.dt=0.01;
par.rotorPos = par.arml * [
     1   0  -1   0;
     0   1   0  -1;
     0   0   0   0
];
par.hoverw = sqrt(par.mass * par.g / (4 * par.kf));
par.rotorDir = [1;-1;1;-1];
par.rotorAxis = repmat([0;0;-1],1,4);

par.I=diag([4.856e-3;4.856e-3;8.801e-3]);
end