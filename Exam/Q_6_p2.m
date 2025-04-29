clear;

% Define Pauli matrices
sigma_x = [0, 1; 1, 0];
sigma_y = [0, -1i; 1i, 0];
sigma_z = [1, 0; 0, -1];

% Define theta and phi values
theta_vals = [0, pi/4, pi/2, pi];
phi_vals = [0, pi/2];

% Loop through theta and phi
for theta = theta_vals
    for phi = phi_vals
        % Compute Sn = S ⋅ n
        Sn = sin(theta)*cos(phi)*sigma_x + sin(theta)*sin(phi)*sigma_y + cos(theta)*sigma_z;

        % Display result
        fprintf('theta = %.2f, phi = %.2f\n', theta, phi);
        disp(Sn);
    end
end

