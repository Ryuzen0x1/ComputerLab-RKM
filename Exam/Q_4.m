clear;
clc;

%defining the pauli matrices
x=[0,1;1,0];
z=[1,0;0,-1];
printf("Pauli x matrix=\n");
x
printf("Pauli z matrix=\n");
z
%commutation relation -2.i.y=[x,z]
C=x*z-z*x;
printf("Commutator of Pauli x and Pauli z matrices is\n")
disp(C);
y=C./(2.i);
printf("Numerically the Pauli y matrix is found out to be\n")
disp(y);
%eigenvalue and eigenvectors
[v,e]=eig(y);
v;
diag(e);

idx = find(diag(e) == 1);
% or can use: idx = find(abs(diag(e) - 1) < 1e-10)
v1 = v(:, idx);

printf("Eigenvector of Pauli y matrix corresponding to eigenvalue +1=\n");

v1

%Magnetic field strength along z (2*pi)
B = 2 * pi;

% Hamiltonian: H = -pi * sigma_z
H = -pi *z;

% Initial state: eigenvector of sigma_y with eigenvalue +1 (|+>_y)
psi0 = v1;

% Define time vector
t = linspace(0, 1, 1000);
P = zeros(size(t));

for k = 1:length(t)
    U = expm(-1i * H * t(k));      % Time evolution operator
    psi_t = U * psi0;              % Evolved state
    P(k) = abs(psi0' * psi_t)^2;   % Probability of projecting back to psi0
end

% Plotting
plot(t, P, 'LineWidth', 1.5);
xlabel('Time');
ylabel('Probability of measuring S_y = +ħ/2');
title('Measurement Probability of S_y = +ħ/2 over time');
grid on;
