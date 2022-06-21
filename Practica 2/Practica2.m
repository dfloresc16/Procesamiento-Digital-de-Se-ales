%Autor: Flores Chavarria Diego
clear all;
clc
close all;

impulso = @(n) n==0;
escalon = @(n) n>=0;
x1 = @(n) ( impulso(n) + escalon(n+4) - 2*escalon(n) + escalon(n-5) );
x2 = @(n) ( escalon(n+4)-escalon(n-5) );
y1 = @(n) ( (1/3)*( x2(n+1) + x2(n) + x2(n-1) ) );
y2 = @(n) ( ((4/5).^n).*x2(n) );


% Ejercicio 1

n = -10:10;
figure(1)
stem(n,x1(n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n = -10:10;
figure(2)
stem(n,x1(n-5),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n = -10:10;
figure(3)
stem(n,x1(n+5),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n = -10:10;
figure(4)
stem(n,x1(-n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n = -10:10;
figure(5)
stem(n,x1(-n+5),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n = -10:10;
figure(6)
stem(n,x1(-n-5),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

%Ejercicio 2

n = -10:10;
figure(7)
stem(n,x2(n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n = -10:10;
figure(8)
stem(n,y1(n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n = -10:10;
figure(9)
stem(n,y2(n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

%Ejercicio 3

n = -4:4;
x3 =@(n)(5-abs(n)).*(n>=-4 & n<=4);
figure(10)
stem(n,x3(n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')


xu = upsample(x3(n),2);
figure(11)
n = -8:9;
stem(n,xu,'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')


xd = downsample(x3(n),2);
figure(12)
n = -4:4;
stem(n,xd,'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

