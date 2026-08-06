function stateNew = stateAdd(state, k, h)

stateNew.eta = state.eta + h*k.eta;
stateNew.nu  = state.nu  + h*k.nu;

end