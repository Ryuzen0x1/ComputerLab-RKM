clear;
close all;
N =2;

zero = [1; 0];

psi0 = zero;
for i = 2:N
    psi0 = kron(psi0, zero);
end

rho0 = psi0 * psi0';

disp('Initial density matrix rho(0):');
disp(rho0);