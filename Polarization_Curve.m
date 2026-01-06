% Create a polarization curve for electromechanical components

% Define constants
R = 8.314; % Universal gas constant [J/molK^-1]
F = 96485 % Faraday constant [C/mol]
n = 2; % Number of electrons
alpha = 0.5; % Change transfer coefficient

% Operating conditions
T = 353; % Operating Temperature [K]
T_ref = 288; % Reference Temperature [K]

% Electromechanical parameters
J0 = 1e-3; % Exchange current density [Am^2]
R_area = 0.25; % Area-specific density [Ohm*m^2]
k_th = 1e-3; % Thermal loss coefficient [V/K]


% Define current density [A/m^2]
J = linspace(1e-4, 1, 50); 

% Define open circuit voltage [V]
V_oc = 0.9; 

% Calculate Activation Overpotential with Butler-Volmer [V]
eta_act = (R*T)/(alpha*n*F) .*log(J./J0);

% Calculate Ohmic Overpotential (Area-specific resistance) [V]
eta_ohm = R_area * J;

% Calculate Thermodynamic Losses (Entropy related) [V]
eta_th = k_th * (T - T_ref); 

% Calculate total cell voltage [V]
V = V_oc - eta_act - eta_ohm; 

% Plot the polarizaion curve
figure; 
plot(J, V, 'r','LineWidth',2); 
grid on; 

xlabel('Current Density [A/m^2]'); 
ylabel('Voltage [V]'); 
title('Generic Polarization Curve'); 

% Plot individual losses
figure; 
plot(J, eta_act, 'b', 'LineWidth', 2); hold on; 
plot(J, eta_ohm, 'k', 'LineWidth', 2); 
yline(eta_th, '--r', 'LineWidth', 2); 
grid on; 

xlabel('Current Density [A/m^2]'); 
ylabel('Voltage Loss [V]'); 
legend('Activation Loss','Ohmic Loss','Thermal Loss'); 
title('Voltage Loss Components'); 