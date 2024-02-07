
addpath(genpath('.'));
loadedData = load('vehicleData.mat');
vehicle = loadedData.vehicle;
folderPath = 'F:\OneDrive - Université de Toulon\Marine and Maritime Intelligent Robotics\Underwater Robotics, Modelling and Control\Lab\TP_Sparus_Final_File\SparusSim\Output\Drag_Force_analysis'; 

% Time vector
T = (1:size(VitB_S, 1)) * 0.01;
v = sqrt(sum(VitB_S.^2, 2));

%% Submarine Body Drag force Analysis
plotDragForces(T, v, vehicle.submarine.Cd_surge, vehicle.submarine.Cd_sway,...
    vehicle.submarine.Cd_heave, vehicle.submarine.Sa, vehicle.submarine.Sb, ...
    vehicle.submarine.Sb, 'Submarine Drag Force Analysis',folderPath);

%% Antenna Body Drag force Analysis
plotDragForces(T, v, vehicle.antenna.Cd_surge, vehicle.antenna.Cd_sway,...
    vehicle.antenna.Cd_heave, vehicle.antenna.Sa, vehicle.antenna.Sb, ...
    vehicle.antenna.Sc,'Antenna Drag Force Analysis',folderPath);

%% Small Cylinder(SC) Body Drag force Analysis
plotDragForces(T, v, vehicle.SC.Cd_surge, vehicle.SC.Cd_sway,...
    vehicle.SC.Cd_heave, vehicle.SC.Sa, vehicle.SC.Sb, ...
    vehicle.SC.Sc,'Small Cylinder(SC) Body Drag Force Analysis',folderPath);

%% Thruster Drag force Analysis
plotDragForces(T, v, vehicle.thruster.Cd_surge, vehicle.thruster.Cd_sway,...
    vehicle.thruster.Cd_heave, vehicle.thruster.Sa, vehicle.thruster.Sb, ...
    vehicle.thruster.Sc,'Thruster Drag Force Analysis',folderPath);

function plotDragForces(T, v, Cd_surge, Cd_sway, Cd_heave, Sa, Sb, Sc, figureTitle, folderPath)
    % Calculate drag force for surge, sway, and heave
    F_drag_surge = 0.5 * Cd_surge * Sa * v.^2;
    F_drag_sway  = 0.5 * Cd_sway * Sb * v.^2;
    F_drag_heave = 0.5 * Cd_heave * Sc * v.^2; 

    % Plot the drag forces
    fig = figure;
    plot(T, F_drag_surge, 'r', 'DisplayName', 'Surge Drag Force');
    hold on;
    plot(T, F_drag_sway, 'g', 'DisplayName', 'Sway Drag Force');
    plot(T, F_drag_heave, 'b', 'DisplayName', 'Heave Drag Force');
    hold off;
    
    title(figureTitle);
    xlabel('Time (s)');
    ylabel('Drag Force (N)');
    legend('show');
    grid on;
    
    % Save the figure
    savePath = fullfile(folderPath, [figureTitle, '.png']);
    saveas(fig, savePath);
end

