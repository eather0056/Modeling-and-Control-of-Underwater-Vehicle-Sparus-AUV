%% here you can implement the code in order to have some figures ...
close all

% Variable Definitions
T = (1:size(PosE,1)) * 0.01;

% Plot Velocities
figure(1);
set(gcf, 'Name', 'Body Frame Linear Velocities over Time', 'NumberTitle', 'off');
subplot(2,1,1);
plotData(T, VitB_S(:,1:3), {'surge', 'sway', 'heave'}, 'Body Frame Linear Velocities over Time', 'v [m/s]');
subplot(2,1,2);
plotData(T, 180*VitB_S(:,4:6)/pi, {'roll', 'pitch', 'yaw'}, 'Body Frame Angular Velocities over Time', 'omega [deg/s]');

% Plot Positions
figure(2);
set(gcf, 'Name', 'Positions', 'NumberTitle', 'off');
subplot(2,1,1);
plotData(T, PosE_S(:,1:3), {'surge', 'sway', 'heave'}, 'Position', 'Position [m]');
subplot(2,1,2);
plotData(T, 180*PosE_S(:,4:6)/pi, {'roll', 'pitch', 'yaw'}, 'Attitude', 'Angle [deg]');

% Plot Accelerations
figure(3);
set(gcf, 'Name', 'Body Frame Linear Acceleration over Time', 'NumberTitle', 'off');
subplot(2,1,1);
plotData(T, AccB_S(:,1:3), {'surge', 'sway', 'heave'}, 'Body Frame Linear Acceleration over Time', 'a [m/s^2]');
subplot(2,1,2);
plotData(T, 180*AccB_S(:,4:6)/pi, {'roll', 'pitch', 'yaw'}, 'Body Frame Angular Acceleration over Time', 'alpha [deg/s^2]');

% Plot Thruster Forces
figure(4);
set(gcf, 'Name', 'Thruster forces', 'NumberTitle', 'off');
plotData(T, Thrust_S, {'vertical', 'right', 'left'}, 'Thruster forces', 'F [N]');

% Comparative Plot for Estimated and Measured Positions
figure;
for i = 1:3
    subplot(3,1,i);
    plot(T, PosE(:,i), T, PosE_M(:,i));
    title(['Position - Axis ', num2str(i)]);
    xlabel('Time (s)');
    ylabel('Position (m)');
    legend('Estimated', 'Measured');
end

% 3D Trajectory Visualization
figure;
plot3(PosE(:,1), PosE(:,2), PosE(:,3));
title('3D Trajectory of AUV');
xlabel('X (m)');
ylabel('Y (m)');
zlabel('Z (m)');
grid on;


% Correlation Analysis
% Compute cross-correlations
[corr_lag_x, corr_val_x] = xcorr(AccB_S(:,1), Thrust_S(:,1), 'coeff');
[corr_lag_y, corr_val_y] = xcorr(AccB_S(:,2), Thrust_S(:,2), 'coeff');
[corr_lag_z, corr_val_z] = xcorr(AccB_S(:,3), Thrust_S(:,3), 'coeff');

% Plot them on the same figure with different colors
figure;
plot(corr_lag_x, corr_val_x, 'r', 'DisplayName', 'X-axis');
hold on; % Hold on to plot additional lines
plot(corr_lag_y, corr_val_y, 'g', 'DisplayName', 'Y-axis');
plot(corr_lag_z, corr_val_z, 'b', 'DisplayName', 'Z-axis');
hold off;

% Add title and labels
title('Cross-correlation between Acceleration and Thrust');
xlabel('Lag');
ylabel('Correlation Coefficient');

% Add legend
legend('show');

% Enable grid
grid on;




function plotData(T, data, legends, titleText, ylabelText)
    plot(T, data);
    grid on;
    legend(legends);
    title(titleText);
    xlabel('t [s]');
    ylabel(ylabelText);
end



