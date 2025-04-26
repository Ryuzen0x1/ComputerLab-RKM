clear;
close all;

X = [0 1;1 0];
Z = [1 0;0 -1];
[Vx, Dx] = eig(X);
[Vz, Dz] = eig(Z);

N_Z1 = Vx'*Vz(:, 1);
N_Z2 = Vx'*Vz(:, 2);
