clear all;
close all;

%% full random matrix
format longEng
%(1)Compute the 2-norm
End = 12; % 2^10 , begin with 4
Start = 4;
A1 = zeros(End-Start+1, 100); % store the 2 norm of 100 matrices with various dimension
for i=Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        B = sqrt(m).*randn(m);
        A1(i-3,j)= norm(B);
    end
end


(2)Compute the eigenvalues
End = 12; % 2^10 , begin with 4
Start = 4;
A2 = zeros(End-Start+1,100,2^End); % store the 2 norm of 100 matrices with various dimension
SR = zeros(End-Start+1,100);
for i=Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        B2 = sqrt(m).*randn(m);
        temp = eig(B2);
        SR(i-3,j) = max(abs(temp));
        A2(i-3,j,1:m)= temp;
    end
end

 
  % close all    % Closes all currently open figures.
marker = {'bo','ro','go','yo','bo','ro','go','yo'};
sizeM =size(marker,2);

figure(1)
for i= Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        num = zeros(1,m);
        num(1,:) = A2(i-3,j,1:m);
        num = num';
        plot(real(num),imag(num),marker{(mod(i-3,sizeM)+1)},'MarkerSize', (End-Start+2)-(i-3)) %   Plot real and imaginary parts
        hold all;
    end
end
xlabel('Real')
ylabel('Imaginary')
t1 = ['Eigenvalues of a random matrix of dimension '];
title(t1)

% (3) Condition number
End = 1000; % 2^10 , begin with 4
Start = 1;
A3 = zeros(End-Start+1, 100); % store the 2 norm of 100 matrices with various dimension
for i=Start:1:End
    m = 100*i; % dimension of the matrix, m*m
    for j=1:100
        B = sqrt(m).*randn(m);
        A3(i,j)= cond(B);
    end
end

%% upper triangular matirx
%(U1)Compute the 2-norm
End = 12; % 2^10 , begin with 4
Start = 4;
AU1 = zeros(End-Start+1, 100); % store the 2 norm of 100 matrices with various dimension
for i=Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        B = triu(sqrt(m).*randn(m),0);
        AU1(i-3,j)= norm(B);
    end
end


%(U2)Compute the eigenvalues
End = 8; % 2^10 , begin with 4
Start = 4;
AU2 = zeros(End-Start+1,100,2^End); % store the 2 norm of 100 matrices with various dimension
SRU = zeros(End-Start+1,100);
for i=Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        B2 = triu(sqrt(m).*randn(m),0);
        temp = eig(B2);
        SRU(i-3,j) = max(abs(temp));
        AU2(i-3,j,1:m)= temp;
    end
end

 
marker = {'bo','ro','go','yo','bo','ro','go','yo'};
sizeM =size(marker,2);

figure(2)
for i= Start:1:End
    m = 2^i; % dimension of the matrix, m*m
    for j=1:100
        num = zeros(1,m);
        num(1,:) = AU2(i-3,j,1:m);
        num = num';
        plot(real(num),imag(num),marker{(mod(i-3,sizeM)+1)},'MarkerSize', (End-Start+2)-(i-3)) %   Plot real and imaginary parts
        hold all;
    end
end
xlabel('Real')
ylabel('Imaginary')
t2 = ['Eigenvalues of a random matrix of dimension '];
title(t2)

% (U3) Condition number
End = 50; % 2^10 , begin with 4
Start = 1;
AU3 = zeros(End-Start+1, 100); % store the 2 norm of 100 matrices with various dimension
for i=Start:1:End
    m = 100*i; % dimension of the matrix, m*m
    for j=1:100
        B = triu(sqrt(m).*randn(m),0);
        AU3(i,j)= cond(B);
    end
end
