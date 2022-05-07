m_Ahead = 1000; %m[kg]
b_Ahead = 50; %friction
t_gap = 1.4;
D_default = 10;
% Specify the driver-set velocity in m/s.
v_set = 30;
% Considering the physical limitations of the vehicle dynamics,
% the acceleration is constrained to the range [-3,2] (m/s^2).

amin_ego = -3;
amax_ego = 2;
D_safe = D_default + t_gap*V_ego;

%  The inputs to the ACC system block are:
% 
%     Driver-set velocity $V_{set}$
% 
%     Time gap $T_{gap}$
% 
%     Velocity of the ego car $V_{ego}$
% 
%     Relative distance to the lead car $D_{rel}$ (from radar)
% 
%     Relative velocity to the lead car $V_{rel}$ (from radar)


