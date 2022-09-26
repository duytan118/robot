xa= 60; ya=30; xb=30; yb=60;
l1=50;l2=50;
for t=0:0.02:2*pi
    X = 3*(1+sin(6*t))*cos(t)
    Y = 3*(1+sin(6*t))*sin(t)
       
    c2 = (X^2 + Y^2 -l1^2 - l2^2)/(2*l1*l2)
    s2 = sqrt(abs(1-c2^2))
    t2 = atan2(s2,c2)
    t22 = t2*180/pi
    
    c1 = X*(l1+l2*c2) + Y*(l2*s2);
    s1 = Y*(l1+l2*c2) - X*(l2*s2);
    t1 = atan2(s1,c1);
    t11 = t1*180/pi
    
    Px = l1*cos(t1) + l2*cos(t1+t2);
    Py = l1*sin(t1) + l2*sin(t1+t2);
   
    subplot(2,1,1)
    plot(t,t11,'r.',t,t22,'k.')
    hold on
    
    subplot(2,1,2)
    plot(Px,Py,'b.')
    hold on
    axis([-18  18  -7 7])
    pause(0.001)
    
    
end