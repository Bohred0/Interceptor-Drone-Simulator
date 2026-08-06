function state = unpackState(x)

state.eta = x(1:6);
state.nu  = x(7:12);

end