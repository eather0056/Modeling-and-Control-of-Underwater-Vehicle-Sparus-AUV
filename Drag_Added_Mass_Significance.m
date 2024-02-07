
loadedData = load('vehicleData.mat');
vehicle = loadedData.vehicle;

%% Heave Motion
%Considiring all Body
% D_M_S.H_M.All_Body.Heave_position = PosE_M(6001,3);
% D_M_S.H_M.All_Body.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.H_M.All_Body.Surge_position = PosE_M(6001,1);
% 
% D_M_S.H_M.All_Body.Heave_velociy = VitB_S(6001,3);
% 
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.H_M.All_Body.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.H_M.All_Body.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end

% % Removing Small Cylinder(SC)
% D_M_S.H_M.R_SC.Heave_position = PosE_M(6001,3);
% D_M_S.H_M.R_SC.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.H_M.R_SC.Surge_position = PosE_M(6001,1);
% 
% D_M_S.H_M.R_SC.Heave_velociy = VitB_S(6001,3);
% D_M_S.H_M.R_SC.Pitch_velociy = 180*VitB_S(6001,5)/pi;
% 
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.H_M.R_SC.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.H_M.R_SC.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end

% % Removing Antena
% D_M_S.H_M.R_Ant.Heave_position = PosE_M(6001,3);
% D_M_S.H_M.R_Ant.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.H_M.R_Ant.Surge_position = PosE_M(6001,1);
% 
% D_M_S.H_M.R_Ant.Heave_velociy = VitB_S(6001,3);
% 
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.H_M.R_Ant.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.H_M.R_Ant.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end

% % Removing USBL
% D_M_S.H_M.R_USBL.Heave_position = PosE_M(6001,3);
% D_M_S.H_M.R_USBL.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.H_M.R_USBL.Surge_position = PosE_M(6001,1);
% 
% D_M_S.H_M.R_USBL.Heave_velociy = VitB_S(6001,3);
% 
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.H_M.R_USBL.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.H_M.R_USBL.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end


% % Removing Thrusters
% D_M_S.H_M.R_Th.Heave_position = PosE_M(6001,3);
% D_M_S.H_M.R_Th.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.H_M.R_Th.Surge_position = PosE_M(6001,1);
% 
% D_M_S.H_M.R_Th.Heave_velociy = VitB_S(6001,3);
% D_M_S.S_M.R_Ant.Surge_velociy = VitB_S(6001,1);
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.H_M.R_Th.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.H_M.R_Th.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end


% %% Surge Motion
% %Considiring all Body
% D_M_S.S_M.All_Body.Heave_position = PosE_M(6001,3);
% D_M_S.S_M.All_Body.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.S_M.All_Body.Surge_position = PosE_M(6001,1);
% 
% D_M_S.S_M.All_Body.Surge_velociy = VitB_S(6001,1);
% 
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.S_M.All_Body.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.S_M.All_Body.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end

% % Removing Small Cylinder(SC)
% D_M_S.S_M.R_SC.Heave_position = PosE_M(6001,3);
% D_M_S.S_M.R_SC.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.S_M.R_SC.Surge_position = PosE_M(6001,1);
% 
% D_M_S.S_M.R_SC.Surge_velociy = VitB_S(6001,1);
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.S_M.R_SC.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.S_M.R_SC.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end

% %Removing Antena
% D_M_S.S_M.R_Ant.Heave_position = PosE_M(6001,3);
% D_M_S.S_M.R_Ant.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.S_M.R_Ant.Surge_position = PosE_M(6001,1);
% 
% D_M_S.S_M.R_Ant.Surge_velociy = VitB_S(6001,1);
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.S_M.R_Ant.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.S_M.R_Ant.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end


% % Removing USBL
% D_M_S.S_M.R_USBL.Heave_position = PosE_M(6001,3);
% D_M_S.S_M.R_USBL.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.S_M.R_USBL.Surge_position = PosE_M(6001,1);
% 
% D_M_S.S_M.R_USBL.Surge_velociy = VitB_S(6001,1);
% D_M_S.S_M.R_USBL.Pitch_velociy = 180*VitB_S(6001,5)/pi;
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.S_M.R_USBL.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.S_M.R_USBL.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end


% % Removing Thrusters
% D_M_S.S_M.R_Th.Heave_position = PosE_M(6001,3);
% D_M_S.S_M.R_Th.Pitch_position = 180*PosE_M(6001,5)/pi;
% D_M_S.S_M.R_Th.Surge_position = PosE_M(6001,1);
% 
% D_M_S.S_M.R_Th.Surge_velociy = VitB_S(6001,1);
% D_M_S.S_M.R_Th.Pitch_velociy = 180*VitB_S(6001,5)/pi;
% if max(180*VitB_S(:,5)/pi) > abs(max(180*VitB_S(:,5)/pi))
%     D_M_S.S_M.R_Th.Pitch_velociy = max(180*VitB_S(:,5)/pi);
% else
%     D_M_S.S_M.R_Th.Pitch_velociy = min(180*VitB_S(:,5)/pi);
% end


%
% %% Yaw Motion
Considiring all Body
D_M_S.Y_M.All_Body.Yaw_position = 180*PosE_M(6001,6)/pi;
D_M_S.Y_M.All_Body.Yaw_velociy  = 180*VitB_S(6001,6)/pi;


% % Removing Small Cylinder(SC)
% D_M_S.Y_M.R_SC.Yaw_position = 180*PosE_M(6001,6)/pi;
% D_M_S.Y_M.R_SC.Yaw_velociy  = 180*VitB_S(6001,6)/pi;
% 
% % Removing Antena
% D_M_S.Y_M.R_Ant.Yaw_position = 180*PosE_M(6001,6)/pi;
% D_M_S.Y_M.R_Ant.Yaw_velociy  = 180*VitB_S(6001,6)/pi;

% % Removing USBL
% D_M_S.Y_M.R_USBL.Yaw_position = 180*PosE_M(6001,6)/pi;
% D_M_S.Y_M.R_USBL.Yaw_velociy  = 180*VitB_S(6001,6)/pi;
% 
% Removing Thrusters
% D_M_S.Y_M.R_Th.Yaw_position = 180*PosE_M(6001,6)/pi;
% D_M_S.Y_M.R_Th.Yaw_velociy  = 180*VitB_S(6001,6)/pi;

%% Saving the Data Strucure
vehicle.D_M_S = D_M_S;

save('vehicleData.mat', 'vehicle');