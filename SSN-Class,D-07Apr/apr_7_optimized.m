clear; clc; close all;

Z = [1 0; 0 -1];
[V, ~] = eig(Z);
vec1 = V(:, 1);
vec2 = V(:, 2);

% Bell states
psi1 = (kron(vec1, vec2) + kron(vec2, vec1)) / sqrt(2);
psi2 = (kron(vec1, vec2) + kron(vec2, vec1) + kron(vec1, vec1)) / sqrt(3);

rho1 = psi1 * psi1';
rho2 = psi2 * psi2';

reduce_rho = @(rho) [trace(rho(1:2,1:2)), trace(rho(1:2,3:4));
                     trace(rho(3:4,1:2)), trace(rho(3:4,3:4))];

vn_entropy = @(rho) -trace(rho * logm(rho)) / log(2);

ReducedM1 = reduce_rho(rho1);
ReducedM2 = reduce_rho(rho2);

S1_vn = vn_entropy(ReducedM1);
S2_vn = vn_entropy(ReducedM2);
