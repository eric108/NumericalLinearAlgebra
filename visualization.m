%% How to use this visualization code

% Do not run the code without commenting. Use specific part of the code and remenber to keep commenting other parts so that
% it can run in a reasonable time and you will get images one by one. Loading the .mat file could a long time,
% be patient to wait.

clear all;
close all;
%% part1

%% full matrix
% 2-norm

load part1(1)1.mat;
x = 2.^[4:12];
f = figure;
plot(x,A1,'x');  % plot all the 100*numOfm point together
xlabel('m, dimension of the matrices as m*m');
ylabel('2-Norm of matrices');
t1 = ['2-Norm of random matrices with increasing dimension'];
title(t1);
saveas(f, '..\output_images\part1(1)1(1).jpg');

A1s = mean(A1.'); % try to only plot the average of 100 matrice with specific m
f = figure;
plot(x,A1s,'+');  % plot all the 100*numOfm point together
xlabel('m, dimension of the matrices as m*m');
ylabel('2-Norm of matrices');
t1 = ['2-Norm of random matrices with increasing dimension'];
title(t1);
saveas(f, '..\output_images\part1(1)1(2).jpg');  %after this add basic fitting to it and get the equation


% eigenvalues and spectral radius
load part1(1)2.mat;
marker = {'b.','r.','g.','y.','b.','r.','g.','y.'};
sizeM =size(marker,2);

figure;
f = figure;
for i= Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        num = zeros(1,m);
        num(1,:) = A2(i-3,j,1:m);
        num = num';
        plot3(real(num),imag(num),[ones(1,m) * i]',marker{(mod(i-3,sizeM)+1)},'MarkerSize', (End-Start+2)-(i-3)) %   Plot real and imaginary parts
        hold all;
    end
end
xlabel('Real')
ylabel('Imaginary')
t1 = ['Eigenvalues of a random matrix of dimension '];
title(t1)
saveas(f, '..\output_images\part1(1)2(1).jpg');

% spectra radius
x = 2.^[Start:End];
f = figure;
plot(x,SR)
xlabel('m, dimension of the matrices as m*m')
ylabel('Spetral Radius')
t1 = ['Spetral Radius of random matrices with increasing dimension'];
title(t1)
saveas(f, '..\output_images\part1(1)2(3).jpg');

SRs = mean(SR.'); % try to only plot the average of 100 matrice with specific m
f = figure;
plot(x,SRs,'+');  % plot all the 100*numOfm point together
xlabel('m, dimension of the matrices as m*m');
ylabel('spectral radius of matrices');
t1 = ['spectral radius of random matrices with increasing dimension'];
title(t1);
saveas(f, '..\output_images\part1(1)2(4).jpg');  %after this add basic fitting to it and get the equation

% condition number
x = log(100.*(1:30));
f = figure;
A3 = log(A3);
A3 = mean(A3.');
plot(x,A3(1:30),'+');
xlabel('m, dimension of the matrices as m*m');
ylabel('condition number of matrices');
t1 = ['condition number of random matrices'];
title(t1);
saveas(f, '..\output_images\part1(1)3(1).jpg');
%% upper triangular matrices
% 2-Norm

load part1(2)1.mat;
x = 2.^[4:12];
f = figure;
plot(x,AU1,'x');  % plot all the 100*numOfm point together
xlabel('m, dimension of the matrices as m*m');
ylabel('2-Norm of matrices');
t1 = ['2-Norm of random upper triangular matrices with increasing dimension'];
title(t1);
saveas(f, '..\output_images\part1(2)1(1).jpg');

AU1s = mean(AU1.'); % try to only plot the average of 100 matrice with specific m
f = figure;
plot(x,AU1s,'+');  % plot all the 100*numOfm point together
xlabel('m, dimension of the matrices as m*m');
ylabel('2-Norm of matrices');
t1 = ['2-Norm of random upper triangular matrices with increasing dimension'];
title(t1);
saveas(f, '..\output_images\part1(2)1(2).jpg');  %after this add basic fitting to it and get the equation

% eigenvalues and spectral radius
load part1(2)2.mat;
marker = {'b.','r.','g.','y.','b.','r.','g.','y.'};
sizeM =size(marker,2);

figure;
f = figure;
for i= Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        num = zeros(1,m);
        num(1,:) = AU2(i-3,j,1:m);
        num = num';
        plot3(real(num),imag(num),[ones(1,m) * i]',marker{(mod(i-3,sizeM)+1)},'MarkerSize', (End-Start+2)-(i-3)) %   Plot real and imaginary parts
        hold all;
    end
end
xlabel('Real')
ylabel('Imaginary')
t1 = ['Eigenvalues of a random upper triangular matrix of dimension '];
title(t1)
saveas(f, '..\output_images\part1(2)2(1).jpg');

% spectra radius
x = 2.^[Start:End];
f = figure;
plot(x,SRU)
xlabel('m, dimension of the matrices as m*m')
ylabel('Spetral Radius')
t1 = ['Spetral Radius of random upper triangular matrices with increasing dimension'];
title(t1)
saveas(f, '..\output_images\part1(2)2(3).jpg');

SRUs = mean(SRU.'); % try to only plot the average of 100 upper triangular matrice with specific m
f = figure;
plot(x,SRUs,'+');  % plot all the 100*numOfm point together
xlabel('m, dimension of the matrices as m*m');
ylabel('spectral radius of matrices');
t1 = ['spectral radius of random upper triangular matrices with increasing dimension'];
title(t1);
saveas(f, '..\output_images\part1(2)2(4).jpg');  %after this add basic fitting to it and get the equation

% condition number
x = log(100.*(1:30));
f = figure;
AU3 = log(AU3);
AU3 = mean(AU3.');
plot(x,AU3(1:30),'+');
xlabel('m, dimension of the matrices as m*m');
ylabel('condition number of matrices');
t1 = ['condition number of random upper triangular matrices'];
title(t1);
saveas(f, '..\output_images\part1(1)3(2).jpg');

%% part2 Gaussian Elimination

% naive
load part10929.mat;
N = 200;
x = 0:1/N:1;
f = figure;
plot(x,y1,'ro');
hold all
plot(x, y2,'b+');
xlabel('x');
ylabel('u');
t1 = ['comparison of numerical and analytical solutions'];
title(t1);
saveas(f, '..\output_images\part2(1)1.jpg'); 

N = 4000;
x = 0:1/N:1;
f = figure;
plot(x,y11,'ro');
hold all
plot(x, y12,'b+');
xlabel('x');
ylabel('u');
t1 = ['N = 4000, comparison of numerical and analytical solutions, naive version'];
title(t1);
saveas(f, '..\output_images\part2(1)3.jpg'); 


N = 200;
x = 0:1/N:1;
f = figure;
plot(x,yP1,'ro');
hold all
plot(x, yP2,'b+');
xlabel('x');
ylabel('u');
t1 = ['N = 200, comparison of numerical and analytical solutions, pivoting version'];
title(t1);
saveas(f, '..\output_images\part2(1)5.jpg'); 

N = 4000;
x = 0:1/N:1;
f = figure;
plot(x,yP11,'ro');
hold all
plot(x, yP12,'b+');
xlabel('x');
ylabel('u');
t1 = ['N = 4000, comparison of numerical and analytical solutions, pivoting version'];
title(t1);
saveas(f, '..\output_images\part2(1)7.jpg'); 

%compare cputime in naive
f = figure;
x = [200,400,800,1000,2000,4000];
x=x';
y1 = [eg200,eg400,eg800,eg1000,eg2000,eg4000];
plot(x,y1,'ro');
hold all;
y2 = [et200,et400,et800,et1000,et2000,et4000];
plot(x,y2,'b+');

%compare cputime in pivoting
f = figure;
x = [200,400,800,1000,2000,4000];
x=x';
y1 = [egp200,egp400,egp800,egp1000,egp2000,egp4000];
plot(x,y1,'ro');
hold all;
y2 = [etp200,etp400,etp800,etp1000,etp2000,etp4000];
plot(x,y2,'b+');

%compare cputime in pivoting between naive and pivoting
f = figure;
x = [200,400,800,1000,2000,4000];
x=x';
y1 = [etp200,etp400,etp800,etp1000,etp2000,etp4000];
plot(x,y1,'ro');
hold all;
y2 = [et200,et400,et800,et1000,et2000,et4000];
plot(x,y2,'b+');

% show the difference between the numerical and analytical results
f = figure;
N = 200;
x = 0:1/N:1;

plot(x,abs(y1-y2));
hold all
N = 400;
x = 0:1/N:1;
plot(x,abs(y3-y4));
hold all
N = 800;
x = 0:1/N:1;
plot(x,abs(y5-y6));
hold all
N = 1000;
x = 0:1/N:1;
plot(x,abs(y7-y8));
hold all
N = 2000;
x = 0:1/N:1;
plot(x,abs(y9-y10));
hold all
N = 4000;
x = 0:1/N:1;
plot(x,abs(y11-y12));

% pivoting 
f = figure;
N = 200;
x = 0:1/N:1;

plot(x,abs(yP1-yP2));
hold all
N = 400;
x = 0:1/N:1;
plot(x,abs(yP3-yP4));
hold all
N = 800;
x = 0:1/N:1;
plot(x,abs(yP5-yP6));
hold all
N = 1000;
x = 0:1/N:1;
plot(x,abs(yP7-yP8));
hold all
N = 2000;
x = 0:1/N:1;
plot(x,abs(yP9-yP10));
hold all
N = 4000;
x = 0:1/N:1;
plot(x,abs(yP11-yP12));
