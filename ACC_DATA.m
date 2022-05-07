clc;    % Clear the command window.
clear;  % Erase all

%% Ahead Vehicle
m_Ahead = 1000;     % mass [kg]
b_Ahead = 50;       % friction in kg/s

%% Follower Vehicle
m_Follower = 1500;  % mass [kg]
r  = 0.326;         % wheel radius [m]
Rf = 3.28;          % Final Drive Ratio
Rtr = 1;            % Gear Ratio
Ctr = 1.6;          % Torque ratio of torque converter
Ne = 4000;          % Engine Speed [rpm]
Kc = 1;             % Brake Pressure Gain
Kb = 0.08;         % Lumped Gain of entire braking system
Ro_A_Cd = 0.78;     % Aerodynamic factor (Density of air 1.225) Cd*Af =0.63
Cr = 0.015;         % Rolling Resistance coefficient
g = 9.81;           % Gravitational Acceleration [m/s^2]
theta = 0;          % Inclination of the road [degree]
F_aero = 1/(2*m_Follower)*Ro_A_Cd;
F_res  = g*Cr*cos(theta);
F_grav = g*sin(theta);
Tmax = 528.7 + 0.152*Ne - 0.0000217*Ne^2;
x0_lead = 500;   % initial position for lead car (m)
xerr_gain=0.8;verr_gain =0.4;vx_gain=0.1;
max_ac=3;min_ac=-3;
v0_lead = 20;   % initial velocity for lead car (m/s)
x0_ego = 10;   % initial position for ego car (m)
Ts = 0.1;t_gap = 1.4;
time_gap = 1.4;
v_set = 40;
desired_distance = 10;
