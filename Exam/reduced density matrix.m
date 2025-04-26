clear;
Z=[1,0;0,-1];
[V1,D1]= eig(Z);

z1=V1(:,1);
z2=V1(:,2);

psi1 = (kron(z1,z2)+kron(z2,z1))/sqrt(2)                                         % psi as defined in question
psi1Dagger = conj(psi1')

density = kron(psi1,psi1Dagger)                                                  % density matrix of psi

ReducedMatrix = [trace(density(1:2, 1:2)), trace(density(1:2,3:4));...
trace(density(3:4, 1:2)), trace(density(3:4,3:4))]                               % reduced density matrix of psi

