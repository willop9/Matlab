function [P1, P2] = RevoluteForwardKinematics2D(armLen, theta, origin)
% calculate relative forward kinematics
 L1 = 5;
 L2 =5;
 xo = 0;
 yo = 0;
 armLen = [L1 L2];
 theta = [a b];
 origin = [xo yo];
 
 
 xp2 = (armLen(1) * cos(theta(a))) + armLen(2) * cos((theta(a) + theta(b)));
 yp2 = (armLen(1) * sin(theta(a))) + armLen(2) * sin((theta(a) + theta(b)));
 
 xp1 = (armLen(1) * cos(theta(a))) + origin(1);
 yp1 = (armLen(1) * sin(theta(b))) + origin(2);
 
 P2 = [xp2 yp2];
 P1 = [xp1 yp1];
end