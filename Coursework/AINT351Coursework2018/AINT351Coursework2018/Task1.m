 L1 = 0.5;
 L2 = 0.5;
 xo = 0;
 yo = 0;
 samples = 1000;
 theta = pi.*rand(samples,2);
 
 armLen = [L1 L2];
 origin = [xo yo];
 
 [P1, P2] = RevoluteForwardKinematics2D(armLen, theta, origin);
 
 plot(P2(:,1), P2(:,2), '+');
 
 