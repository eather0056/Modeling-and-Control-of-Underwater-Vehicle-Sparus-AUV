% Constants
rho = 1000; % Example density of water in kg/m^3
Cd = 1.0; % Example drag coefficient, this is highly dependent on the body shape
A = 0.1; % Cross-sectional area in m^2, this is a placeholder value

% Velocity - assuming constant speed from VitB_S or VitG_M
% Extract the speed magnitude (if the speed is constant, just set v to that constant value)
v = sqrt(sum(VitB_S.^2, 2)); % Replace VitB_S with the relevant variable

% Calculate drag force
F_drag = 0.5 * rho * v.^2 * Cd * A;

% Time vector
T = (1:size(VitB_S, 1)) * 0.01; % Replace with your actual time vector

% Plot drag force over time
figure;
plot(T, F_drag);
title('Drag Force over Time');
xlabel('Time (s)');
ylabel('Drag Force (N)');
grid on;


% Drag matrices
K_main = vehicle.drag_matrix.K_main; % Define the 6x6 drag matrix for the main body

% Calculate drag force for each body at the constant speed
F_drag_main = K_main*[v; zeros(5, 1)]; % Assuming [v; 0; 0; 0; 0; 0]

% Plot the drag force for the main body over time
figure;
plot(T, repmat(F_drag_main(1), size(T)), 'DisplayName', 'Main Body');
hold on;


title('Comparison of Drag Forces at Constant Linear Speed');
xlabel('Time (s)');
ylabel('Drag Force (N)');
legend('show');
grid on;
