function K=posnRates(u,v,w,phi,theta,psi)

R = rotationMatrix(phi, theta, psi);
K=R.'*[u;v;w];
