function [Out] = Command(PosE,VitB,AccB)
global Para

%Depth PID
set_depth = 5;
measured_depth = PosE(3);
measured_heave_velocity = VitB(3);

if measured_depth >= 5
    Para.turn_on_horizontal = Para.turn_on_horizontal + 1;
end

horizontal_on = Para.turn_on_horizontal;

depth_difference = set_depth - measured_depth;

old_integral_heave = Para.integral_heave;
new_integral_heave = old_integral_heave + depth_difference;
Para.integral_heave = new_integral_heave;

Kp1 = 50;
Ki1 = 0.00011;
Kd1 = 250;

Vertical_thrust = Kp1*depth_difference + Ki1*new_integral_heave - Kd1*measured_heave_velocity;

set_surge_velocity = 1;
set_surge = 20;
measured_surge_velocity = VitB(1);
measured_surge_acceleration = AccB(1);
measured_surge = PosE(1);

surge_velocity_difference = set_surge_velocity - measured_surge_velocity;
surge_difference = set_surge - measured_surge;

% Surge PID

if measured_surge >= 18
    
    old_integral_surge_pos = Para.integral_surge_pos;
    new_integral_surge_pos = old_integral_surge_pos + surge_difference;
    Para.integral_surge_pos = new_integral_surge_pos;
    
    Kp3 = 40;
    Ki3 = 0.00085;
    Kd3 = 80;
    
    Horizontal_thrust = Kp3*surge_difference + Ki3*new_integral_surge_pos - Kd3*measured_surge_velocity;
	
% Surge velocity PID

elseif horizontal_on >= 1 && measured_surge <18

    old_integral_surge = Para.integral_surge;
    new_integral_surge = old_integral_surge + surge_velocity_difference;
    Para.integral_surge = new_integral_surge;
    
    Kp2 = 80;
    Ki2 = 0.03;
    Kd2 = 40;
    
    Horizontal_thrust = Kp2*surge_velocity_difference + Ki2*new_integral_surge - Kd2*measured_surge_acceleration;

else
    
    Horizontal_thrust = 0;

end

% commande nulle

Thrust=[Vertical_thrust Horizontal_thrust Horizontal_thrust];


Out=Thrust;
