function Fg=Gforce(state,par)
Fg=rotationMatrix(state)*[0;0;par.mass*par.g];
end