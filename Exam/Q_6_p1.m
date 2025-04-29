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
