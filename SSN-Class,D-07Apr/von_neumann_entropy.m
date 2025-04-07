clear;
close all;

X = [0 1;1 0];
Z = [1 0;0 -1];

[V_1, D_1] = eig(X);
[V_2, D_2] = eig(Z);

x1 = V_1(:, 1);
x2 = D_1(:, 1);
z1 = V_2(:, 1);
z2 = D_2(:, 1);

psi = kron(z1, z2) + kron(z2, z1);
psi = psi / norm(psi);
psi_dag = psi';
D = psi*psi_dag

corners = [1,1; 1,3; 3,1; 3,3];

trace_matrix = zeros(2,2);

for i = 1:size(corners,1)
    r = corners(i,1);
    c = corners(i,2);

    B = D(r:r+1, c:c+1);

    tr = trace(B);

    trace_matrix(ceil(i/2), mod(i-1,2)+1) = tr;
end

disp('Reduce Matrix:');
disp(trace_matrix);

eigvals = eig(trace_matrix);
entropy_e = -trace(trace_matrix .* logm(trace_matrix));
entropy_2 = -trace(trace_matrix .* (logm(trace_matrix)*log2(e))); % eps to avoid log(0)
disp(['Von Neumann Entropy base-e: ', num2str(entropy_e)]);
disp(['Von Neumann Entropy base-2: ', num2str(entropy_2)]);
