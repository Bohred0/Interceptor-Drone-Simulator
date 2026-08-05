function Fg=Gforce(state,par)
Fg=rotationMatrix(state.eta(4),state.eta(5),state.eta(6))*[0;0;par.mass*par.g];
end