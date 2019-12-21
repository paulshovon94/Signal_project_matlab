clear all;
close all;
clc;
t1=-20:.1:-.5;
y1=zeros(size(t1));
t2=-.5:.01:1;
y2=.5*ones(size(t2));
t3=1:.1:3;
y3=ones(size(t3));
t4=3:.01:3.5;
y4=-1*t4+4;
t5=3.5:.01:5;
y5=.5*ones(size(t5));
t6=5:.1:20;
y6=zeros(size(t6));
t=[t1 t2 t3 t4 t5 t6];
y=[y1 y2 y3 y4 y5 y6];
figure
plot(t,y,'r','Linewidth',3)
title('orginal');
axis([-10 10 -3 3])
xlabel('time in s');
ylabel('function y(t)');
grid on;
% time shifting
% orginal signal
figure(2)
subplot(3,1,1)
plot(t,y,'r')
title('orginal');
xlabel('time period');
ylabel('amplitude');
% 2 sec delayed
subplot(3,1,2)
plot(t,y,'--r',(t+2),y)
title('delayed 2 sec');
xlabel('time period');
ylabel('amplitude');
% 2 sec advance
subplot(3,1,3)
plot(t,y,'--r',(t-2),y)
title('advanced 2 sec')
xlabel('time period');
ylabel('amplitude');

% reflection
% orginal signal
figure(3)
subplot(2,1,1)
plot(t,y,'r')
title('orginal');
xlabel('time period');
ylabel('amplitude');
% 2 sec delayed
subplot(2,1,2)
plot((-t),y,t,y,'--r')
title('reflection operation');
xlabel('time period');
ylabel('amplitude');

% scaling
% orginal signal
figure(4)
subplot(3,1,1)
plot(t,y,'r')
title('orginal');
xlabel('time period');
ylabel('amplitude');
% compresed sec delayed
subplot(3,1,2)
plot((.5*t),y,t,y,'--r')
title('compresed operation');
xlabel('time period');
ylabel('amplitude');
%  sec delayed
subplot(3,1,3)
plot((2*t),y,t,y,'--r')
title('expand operation');
xlabel('time period');
ylabel('amplitude');

% even and odd part of a signal
figure(5)
e1=-20:.1:-5;
x1=zeros(size(e1));
e2=-5:.1:-3.5;
x2=.25*ones(size(e2));
e3=-3.5:.1:-3;
x3=(1*e3+4)*.5;
e4=-3:.1:-1;
x4=.5*ones(size(e4));
e5=-1:.1:-.5;
x5=.25*ones(size(e5));
e6=-.5:.1:.5;
x6=.5*ones(size(e6));
e7=.5:.1:1;
x7=.25*ones(size(e7));
e8=1:.1:3;
x8=.5*ones(size(e8));
e9=3:.1:3.5;
x9=(-1*e9+4)*.5;
e10=3.5:.1:5;
x10=.25*ones(size(e10));
e11=5:.1:20;
x11=zeros(size(e11));
e=[e1 e2 e3 e4 e5 e6 e7 e8 e9 e10 e11];
x=[x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11];
plot(e,x);
% odd
figure(6)
o1=-20:.1:-5;
z1=zeros(size(o1));
o2=-5:.1:-3.5;
z2=-.25*ones(size(o2));
o3=-3.5:.1:-3;
z3=(-1*o3-4)*.5;
o4=-3:.1:-1;
z4=-.5*ones(size(o4));
o5=-1:.1:-.5;
z5=-.25*ones(size(o5));
o6=-.5:.1:.5;
z6=zeros(size(o6));
o7=.5:.1:1;
z7=.25*ones(size(o7));
o8=1:.1:3;
z8=.5*ones(size(o8));
o9=3:.1:3.5;
z9=(-1*o9+4)*.5;
o10=3.5:.1:5;
z10=.25*ones(size(o10));
o11=5:.1:20;
z11=zeros(size(o11));
o=[o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11];
z=[z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11];
plot(o,z);
grid on;