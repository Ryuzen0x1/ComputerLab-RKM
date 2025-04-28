clear;

% Define matrices
O1 = [0, 1; 1, 0];
O3 = [0.5, 0; 0, -0.5];

% Calculate eigenvalues and eigenvectors
[v1, e1] = eig(O1);
[v3, e3] = eig(O3);

% Calculate commutator
commutator = O1*O3 - O3*O1;

% Display results with better formatting
printf('Eigenvalues of O1:\n');
disp(diag(e1));

printf('\nEigenvectors of O1:\n');
disp(v1);

printf('\nEigenvalues of O3:\n');
disp(diag(e3));

printf('\nEigenvectors of O3:\n');
disp(v3);

printf('\nCommutator [O1,O3]:\n');
disp(commutator);
