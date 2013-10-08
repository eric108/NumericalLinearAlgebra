close all;
clear all;

%% Using Naive GE 

%
format longEng
% 200
tt = cputime;
N =200;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
y1 = GaussianEliminationNaive(A,b);
eg200 = cputime-tg;
y1 = y1';
y2 = AnalyticalSolution(N);
y2 = y2';
x = 0:1/N:1;
figure
plot(x,y1);
hold all
plot(x, y2);
et200 = cputime-tt;

%400
tt = cputime;
N =400;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
y3 = GaussianEliminationNaive(A,b);
eg400 = cputime-tg;
y3 = y3';
y4 = AnalyticalSolution(N);
y4 = y4';
x = 0:1/N:1;
figure
plot(x,y3);
hold all
plot(x, y4);
et400 = cputime-tt;

%800
tt = cputime;
N =800;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
y5 = GaussianEliminationNaive(A,b);
eg800 = cputime-tg;
y5 = y5';
y6 = AnalyticalSolution(N);
y6 = y6';
x = 0:1/N:1;
figure
plot(x,y5);
hold all
plot(x, y6);
et800 = cputime-tt;

%1000
tt = cputime;
N =1000;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
y7 = GaussianEliminationNaive(A,b);
eg1000 = cputime-tg;
y7 = y7';
y8 = AnalyticalSolution(N);
y8 = y8';
x = 0:1/N:1;
figure
plot(x,y7);
hold all
plot(x, y8);
et1000 = cputime-tt;

%2000
tt = cputime;
N =2000;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
y9 = GaussianEliminationNaive(A,b);
eg2000 = cputime-tg;
y9 = y9';
y10 = AnalyticalSolution(N);
y10 = y10';
x = 0:1/N:1;
figure
plot(x,y9);
hold all
plot(x, y10);
et2000 = cputime-tt;

%4000
tt = cputime;
N =4000;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
y11 = GaussianEliminationNaive(A,b);
eg4000 = cputime-tg;
y11 = y11';
y12 = AnalyticalSolution(N);
y12 = y12';
x = 0:1/N:1;
figure
plot(x,y11);
hold all
plot(x, y12);
et4000 = cputime-tt;

%GE with partial pivoting

%N=200
tt = cputime;
N =200;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
yP1 = GaussianEliminationPartialPivoting(A,b);
egp200 = cputime-tg;
yP1 = yP1';
yP2 = AnalyticalSolution(N);
yP2 = yP2';
x = 0:1/N:1;
figure
plot(x,yP1);
hold all
plot(x, yP2);
etp200 = cputime-tt;

%N=400
tt = cputime;
N =400;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
yP3 = GaussianEliminationPartialPivoting(A,b);
egp400 = cputime-tg;
yP3 = yP3';
yP4 = AnalyticalSolution(N);
yP4 = yP4';
x = 0:1/N:1;
figure
plot(x,yP3);
hold all
plot(x, yP4);
etp400 = cputime-tt;

%N=800
tt = cputime;
N =800;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
yP5 = GaussianEliminationPartialPivoting(A,b);
egp800 = cputime-tg;
yP5 = yP5';
yP6 = AnalyticalSolution(N);
yP6 = yP6';
x = 0:1/N:1;
figure
plot(x,yP5);
hold all
plot(x, yP6);
etp800 = cputime-tt;

%N=1000
tt = cputime;
N =1000;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
yP7 = GaussianEliminationPartialPivoting(A,b);
egp1000 = cputime-tg;
yP7 = yP7';
yP8 = AnalyticalSolution(N);
yP8 = yP8';
x = 0:1/N:1;
figure
plot(x,yP7);
hold all
plot(x, yP8);
etp1000 = cputime-tt;

%N=2000
tt = cputime;
N =2000;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
yP9 = GaussianEliminationPartialPivoting(A,b);
egp2000 = cputime-tg;
yP9 = yP9';
yP10 = AnalyticalSolution(N);
yP10 = yP10';
x = 0:1/N:1;
figure
plot(x,yP9);
hold all
plot(x, yP10);
etp2000 = cputime-tt;

%N=4000
tt = cputime;
N =4000;
[A,b] = CentralDifferenceScheme(N);
tg = cputime;
yP11 = GaussianEliminationPartialPivoting(A,b);
egp4000 = cputime-tg;
yP11 = yP11';
yP12 = AnalyticalSolution(N);
yP12 = yP12';
x = 0:1/N:1;
figure
plot(x,yP11);
hold all
plot(x, yP12);
etp4000 = cputime-tt;

