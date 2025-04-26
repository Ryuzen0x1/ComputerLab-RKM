clear;
close all;

% Pauli X matrix
X = [0 1; 1 0];
[Vx, Dx] = eig(X);
disp('Pauli X Eigenvalues:');
disp(diag(Dx).');
disp('Pauli X Eigenvectors:');
disp(Vx);

% Pauli Y matrix
Y = [0 -1i; 1i 0];
[Vy, Dy] = eig(Y);
disp('Pauli Y Eigenvalues:');
disp(diag(Dy).');
disp('Pauli Y Eigenvectors:');
disp(Vy);

% Pauli Z matrix
Z = [1 0; 0 -1];
[Vz, Dz] = eig(Z);
disp('Pauli Z Eigenvalues:');
disp(diag(Dz).');
disp('Pauli Z Eigenvectors:');
disp(Vz);