clear all;
clc
close all;

impulso = @(n) n==0;
escalon = @(n) n>=0;
tren = @(n,N) mod(n,N)==0;
exponencial = @(a,n) (a.^n);
seno = @(wo,n) sin(wo*n);
expCompleja = @(wo,n) exp(1i*wo*n);

n=0:10;
figure(1)
subplot(211)
stem(n,3*impulso(n-3),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')
subplot(212)
stem(n,5*impulso(n-5),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')

n=-10:10;
figure(2)
subplot(211)
stem(n,tren(n,5),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')
subplot(212)
stem(n,tren(n,4),'filled','LineWidth',2)
title('x_2(n)')
xlabel('n')

n=0:10;
figure(3)
subplot(211)
stem(n,3*escalon(n-3),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')
subplot(212)
stem(n,5*escalon(n-5),'filled','LineWidth',2)
title('x_2(n)')
xlabel('n')

n=-2:5;
figure(4)
subplot(211)
stem(n,exponencial(.5,n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')
subplot(212)
stem(n,exponencial(-.5,n),'filled','LineWidth',2)
title('x_2(n)')
xlabel('n')

n=-10:10;
figure(5)
subplot(211)
stem(n,seno(pi/5,n),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')
subplot(212)
stem(n,seno(2*pi/5,n),'filled','LineWidth',2)
title('x_2(n)')
xlabel('n')

n=-10:10;
figure(6)
subplot(211)
stem(n,real(expCompleja(pi/5,n)),'filled','LineWidth',2)
title('x_1(n)')
xlabel('n')
subplot(212)
stem(n,imag(expCompleja(pi/5,n)),'filled','LineWidth',2)
title('x_2(n)')
xlabel('n')
