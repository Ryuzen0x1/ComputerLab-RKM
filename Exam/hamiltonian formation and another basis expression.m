% CAUTION: This code must be confirmed before production use. 
% "fprintf" is for MATLAB; use "printf" for Octave if needed.

clear; clc;

B = 1;
c = 0.1;

% Pauli matrices and Identity
X = [0, 1; 1, 0];
Z = [1, 0; 0, -1];
I = eye(2);

[vX, eX] = eig(X);
[vZ, eZ] = eig(Z);

V_kron = kron(vX, vZ);

% Expressing Z in X basis
fprintf("Expressing Z in the basis of X:\n");
Z_in_X_basis = [conj(vX(:,1)') * vZ(:,1), conj(vX(:,1)') * vZ(:,2);
                conj(vX(:,2)') * vZ(:,1), conj(vX(:,2)') * vZ(:,2)];
disp(Z_in_X_basis);

% Expressing X in Z basis
fprintf("Expressing X in the basis of Z:\n");
X_in_Z_basis = [conj(vZ(:,1)') * vX(:,1), conj(vZ(:,1)') * vX(:,2);
                conj(vZ(:,2)') * vX(:,1), conj(vZ(:,2)') * vX(:,2)];
disp(X_in_Z_basis);

% Hamiltonians
H1 = B * Z;
H2 = B * Z;

H_1 = kron(H1, I) + kron(I, H2);
H_2 = H_1 + c * kron(X, X);   % H_2 adds coupling term

[v_1, e_1] = eig(H_1);
[v_2, e_2] = eig(H_2);

fprintf("Eigenvalues of H_1:\n");
disp(diag(e_1));

fprintf("Eigenvalues of H_2:\n");
disp(diag(e_2));

