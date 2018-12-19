function [P1, P2] = RevoluteForwardKinematics2D(armLen, theta, origin)
% calculate relative forward kinematics
 xp2 = (armLen(:,1) * cos(theta(:,1))) + armLen(:,2) * cos((theta(:,1) + theta(:,2)));
 yp2 = (armLen(:,1) * sin(theta(:,1))) + armLen(:,2) * sin((theta(:,1) + theta(:,2)));
 
 xp1 = (armLen(:,1) * cos(theta(:,1))) + origin(:,1);
 yp1 = (armLen(:,1) * sin(theta(:,1))) + origin(:,2);
 
 P2 = [xp2 yp2];
 P1 = [xp1 yp1];
end