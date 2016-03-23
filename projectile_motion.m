function [ x,y,tf,d,h ] = projectile_motion(v0,theta,t)
%PROJECTILE_MOTION Using instantaneous velocity, angle of departure, and
%time to output x position, y position, time final, distance traveled, and
%maximum height. 

g=9.81;
x = v0*cosd(theta)*t;
y = v0.*sind(theta).*t-(1/2.*g.*(t.^2));
t_Vy = (v0.*sind(theta))./g;
tf = (v0*sind(theta))/(1/2*g);
d = v0.*cosd(theta).*tf;
h = v0.*sind(theta).*t_Vy-(1/2.*g.*(t_Vy.^2));
while t>tf
    fprintf('Error the time range of this projectile is %.4f.\n',tf)
end
fprintf('The instantaneous position is [%.3f,%.3f].\n',x,y)
fprintf('The total distance traveled is %.4f.\n',d)
fprintf('The maximum height is %.4f.\n',h)
end
