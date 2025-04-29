clc; clear;
n=1000;
x=linspace(0,1,n);
Z = [1 0; 0 -1];
[evec, eval] = eig(Z);
v0 = evec(:,1)
v1 = evec(:,2)

% state (alpha|10>+ sqrt(1-alpha^2)|01>)
ket1=kron(v0,v1);
ket2=kron(v1,v0);

for i=1:n
  psi=x(i)*ket1+sqrt(1-x(i)^2)*ket2;
  dmatrix=psi*psi';
  reduced_dmatrix=[trace(dmatrix(1:2, 1:2)), trace(dmatrix(1:2,3:4));...
  trace(dmatrix(3:4, 1:2)), trace(dmatrix(3:4,3:4))] ;

  evals=eig(reduced_dmatrix);
  % disp(diag(evals));
  positive_evals=evals(evals>10^(-5));
  S(i)=-sum(positive_evals.*log2(positive_evals));
  % this form is same like von ,na samjhe to boolna
  % ps: samjha
end
plot(x,S)
