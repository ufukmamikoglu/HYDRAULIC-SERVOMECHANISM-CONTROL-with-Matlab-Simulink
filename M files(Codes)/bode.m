Kp =300; % P-gain
sysT = tf(4034*Kp,[1 628 114244 4034*Kp]) % closed-loop transfer function T(s)
w = 2*2*pi; % 2 Hz frequency, rad/s
[mag,phase]=bode(sysT,w) % closed-loop freq response
bode(sysT)
hold on
grid on
%%
K_LF = 1300; % lead filter gain
sysGc = tf([1 10],[1 40]); % lead filter GC(s)
sysG=tf(4034,[1 628 114244 0 ]); % plant transfer function G(s)
sysTT = feedback(K_LF*sysGc*sysG,1) % closed-loop transfer function T(s)
w = 2*2*pi; % 2 Hz frequency, rad/s
[mag,phase] = bode(sysTT,w)

bode(sysTT)
legend("P-controller","Lead controller")
%%
