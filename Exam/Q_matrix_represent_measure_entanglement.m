clear; clc;

psi = [0; 1; 1; 0];
psi = psi / norm(psi);

phi = [0; 1; 0; 1];
phi = phi / norm(phi);

% Von-Neumann entropies
S_psi = compute_vn_entropy(psi);
S_phi = compute_vn_entropy(phi);

disp('Entanglement entropy of |ψ⟩ = |01⟩ + |10⟩ :');
disp(S_psi);

disp('Entanglement entropy of |φ⟩ = |01⟩ + |11⟩ :');
disp(S_phi);

