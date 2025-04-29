clear;

% Pauli matrices
sigma_x = [0, 1; 1, 0];
sigma_y = [0, -1i; 1i, 0];
sigma_z = [1, 0; 0, -1];

% theta and phi values
theta_vals = [0, pi/4, pi/2, pi];
phi_vals = [0, pi/2];

for theta = theta_vals
    for phi = phi_vals
        % Compute Sn
        Sn = sin(theta)*cos(phi)*sigma_x + sin(theta)*sin(phi)*sigma_y + cos(theta)*sigma_z;

        % Compute eigenvalues and eigenvectors
        [V, D] = eig(Sn);

        % fprintf('theta = %.2f, phi = %.2f\n', theta, phi);
        % disp('Eigenvalues of S_n:');
        disp(diag(D));

        for i = 1:2
            psi = V(:, i);  % Eigenvector
            exp_sigma_x = psi' * sigma_x * psi;  % Expectation value
            % fprintf('Eigenvector %d:\n', i);
            % disp(psi);
            fprintf('Expectation value <sigma_x> = %.4f + %.4fi\n', real(exp_sigma_x), imag(exp_sigma_x));
        end
        fprintf('-----------------------------\n');
    end
end
