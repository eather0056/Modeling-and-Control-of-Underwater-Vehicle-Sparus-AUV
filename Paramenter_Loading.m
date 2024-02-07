
%% Defining Submarine Main Body Geometric parameters
submarine.L = 1.6;
submarine.R = 0.115;
submarine.m = 52;

% Drag coefficients for different directions
submarine.Cd_surge = 0.125; % Drag coefficient in the surge (forward) direction
submarine.Cd_sway  = 0.3;   % Drag coefficient in the sway (sideways) direction
submarine.Cd_heave = submarine.Cd_sway; % Drag coefficient in the heave (up/down) direction is the same as sway due to symmetry

% Calculating projected surface areas
submarine.Sa = pi * submarine.R^2; % Surface area for surge, calculated as the area of a circle (cross-section of the submarine)
submarine.Sb = 2 * submarine.R * submarine.L; % Surface area for sway and heave, calculated as the lateral surface area of a cylinder
submarine.Sc = submarine.Sb;

%% Defining Antenna Geometric parameters
antenna.W = 0.065;
antenna.H = 0.255;
antenna.T = 0.02;

% Drag coefficients for antenna
antenna.Cd_surge = 2.2; % Coefficient for surge
antenna.Cd_sway = 2; % Coefficient for sway
antenna.Cd_heave = 2.5; % Coefficient for heave

% Projected surface areas for the antenna using structure fields
antenna.Sa = antenna.H * antenna.T; % Surface for surge
antenna.Sb = antenna.H * antenna.W; % Surface for sway
antenna.Sc = antenna.W * antenna.T; % Surface for heave

%% Defining USBL (Ultra-Short Baseline) Geometric parameters
usbl.R = 0.0275;
usbl.H = 0.055;

usbl.Cd_surge = 0.3; % Drag coefficient for surge direction (circular rod)
usbl.Cd_sway = usbl.Cd_surge; % Drag coefficient for sway direction, same as surge due to circular shape
usbl.Cd_heave = 2.3; % Drag coefficient for heave direction, calculated based on H/2R ratio

% Calculating projected surface areas for the USBL using structure fields
usbl.Sa = 2 * usbl.R * usbl.H; % Surface area for surge
usbl.Sb = usbl.H * 2 * usbl.R; % Surface area for sway
usbl.Sc = pi * usbl.R^2; % Surface area for heave

%% Defining Thruster Geometric parameters
thruster.L = 0.236;
thruster.R = 0.045;
thruster.W = 0.106;

% Drag coefficients for the thruster
thruster.Cd_surge = 0.17; % Drag coefficient for surge direction
thruster.Cd_sway = 2.1;   % Drag coefficient for sway direction (plate-like structure)
thruster.Cd_heave = 2.3;  % Drag coefficient for heave direction (plate-like structure)

% Projected surface areas for the thruster
thruster.Sa = pi * thruster.R^2; % Surface area for surge
thruster.Sb = 2 * thruster.R * thruster.L; % Surface area for sway
thruster.Sc = thruster.W * thruster.L; % Surface area for heave

%% Defining DVL (Doppler Velocity Log) Geometric parameters
DVL.R = 0.004;
DVL.H = 0.0335;

%% Defining IMU (Inertial Measurement Unit) Geometric parameters
IMU.R = 0.022;
IMU.H = 0.024;

%% Defining small cylinder(SC) Geometric parameters (small cylinder in front of the USBL)
SC.R = 0.0335;
SC.H = 0.029;

% Projected surface areas for the SC
SC.Sa = 2 * SC.R * SC.H; % Surface area for surge
SC.Sb = 2 * SC.R * SC.H; % Surface area for sway
SC.Sc = pi * SC.R^2; % Surface area for heave

% Drag coefficients for different directions
SC.Cd_surge = 0.3;
SC.Cd_sway = SC.Cd_surge; % Drag coefficient for sway direction, same as surge due to circular shape
SC.Cd_heave = 2.4; % Drag coefficient for heave direction, calculated based on H/2R ratio

%% Distance vectors
submarine.rg  = [0.0548; 0; 0];
usbl.rg       = [0.44; 0; -0.14];
DVL.rg        = [-0.4145; 0; 0.11];
IMU.rg        = [0.364, -0.021, -0.085];
antenna.rg    = [-0.3903; 0; -0.245];
thruster.R_rg = [-0.49; 0.161; 0];
thruster.L_rg = [-0.49; -0.161; 0];
SC.rg        =  [0.7; 0; -0.13];

%% Creating a master structure to store all substructures
vehicle = struct();
vehicle.submarine = submarine;
vehicle.antenna = antenna;
vehicle.usbl = usbl;
vehicle.thruster = thruster;
vehicle.DVL = DVL;
vehicle.IMU = IMU;
vehicle.SC = SC;


%% Save the structure to a .mat file
save('vehicleData.mat', 'vehicle');
