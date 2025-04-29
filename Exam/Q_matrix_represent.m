% State |ψ⟩ = |01⟩ + |10⟩
psi = [0; 1; 1; 0];

% Normalization of |ψ⟩
psi = psi / norm(psi);

% State |φ⟩ = |01⟩ + |11⟩
phi = [0; 1; 0; 1];

% Normalization of |φ⟩
phi = phi / norm(phi);

disp('Normalized |ψ⟩ = |01⟩ + |10⟩ :');
disp(psi);

disp('Normalized |φ⟩ = |01⟩ + |11⟩ :');
disp(phi);

