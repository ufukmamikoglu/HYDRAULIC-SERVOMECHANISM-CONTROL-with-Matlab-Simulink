
%%  PARAMETERS
m = 12; % kg Piston and load mass
b = 215; % Viscous friction coefficient, b, N.s/m
A = 6.78*(10^(-4)); % Piston area, A,m2
V0 = 1.58*(10^(-4)); % Minimum chamber volume, V0,m3
L = 0.68; % Piston stroke, L, m
P_s = 18*10^6; % Supply pressure, PS, MPa
P_r = 0.12133*(10^(6)); %Reservoir (drain) pressure, Pr, MPa
beta = 729*(10^(6)); % Fluid bulk modulus, ?  ,MPa
Cd = 0.72; % Valve discharge coefficient, Cd
rho = 899; % Fluid density, ?  , kg/m3
h = 0.0094; % Valve orifice height, h, m
wn = 338; % Solenoid–valve undamped natural frequency, ?n , rad/s
zeta = 0.93; % Solenoid–valve damping ratio, ? 
Kv = 25*(10^(-6)); % Solenoid–valve DC gain, Kv  mm/V
K_HA = ((Cd*h)/A)*sqrt(P_s/rho); % hydraulic actuator gain
KP=1550;
K_LF=2000
%%

sysG=tf(4034,[1 628 114244 0 ]);
rlocus(sysG)

%%
Kp=1550
CLpoles=rlocus(sysG,Kp)
%%






