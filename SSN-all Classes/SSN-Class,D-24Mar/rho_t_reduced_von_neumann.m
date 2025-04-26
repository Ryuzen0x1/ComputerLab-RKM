clear;
close all;
N =2;

zero = [1; 0];

psi0 = zero;
for i = 2:N
    psi0 = kron(psi0, zero);
end

rho0 = psi0 * psi0';

corners = [1,1; 1,3; 3,1; 3,3];

trace_matrix = zeros(2,2);

for i = 1:size(corners,1)
    r = corners(i,1);
    c = corners(i,2);

    B = rho0(r:r+1, c:c+1);

    tr = trace(B);

    trace_matrix(ceil(i/2), mod(i-1,2)+1) = tr;
end

disp('Initial density matrix rho(0):');
disp(rho0);
disp('Trace Matrix:');
disp(trace_matrix);

eigvals = eig(rho0);
entropy = -sum(eigvals .* log2(eigvals + eps)); % eps to avoid log(0)
disp(['Von Neumann Entropy: ', num2str(entropy)]);

