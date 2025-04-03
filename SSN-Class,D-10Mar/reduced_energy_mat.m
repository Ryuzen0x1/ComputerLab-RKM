clear;
X = [0 1;1 0];
Z = [1 0;0 -1];

[V_1, D_1] = eig(X);
[V_2, D_2] = eig(Z);

x1 = V_1(:, 1);
x2 = D_1(:, 1);
z1 = V_2(:, 1);
z2 = D_2(:, 1);

psi = kron(z1, z2) + kron(z2, z1);
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

disp('Trace Matrix:');
disp(trace_matrix);

