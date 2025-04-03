% Define matrices X and Z
X = [0 1; 1 0]; % Quantum NOT gate
Z = [1 0; 0 -1];

% Eigenvectors and eigenvalues of X
[eigVec_X, eigVal_X] = eig(X);

% Eigenvectors and eigenvalues of Z
[eigVec_Z, eigVal_Z] = eig(Z);

Outer = kron(eigVec_X, eigVal_X)

% Reduced density matrix of the first system
