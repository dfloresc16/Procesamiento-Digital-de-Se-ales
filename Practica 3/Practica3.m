%Autor: Flores Chavarria Diego
clear all;
clc
close all;

impulso = @(n) n==0;
escalon = @(n) n>=0;


%Ejercicio 1
% a) Graficas de x(n) y h(n)

n = 0:4;
figure('Position',[500 400 600 250])
x = ((4/5).^n).*( escalon(n)-escalon(n-5) );
stem(n,x,'filled','LineWidth',2)
title('x(n)')
xlabel('n')

n = 0:4;
figure('Position',[500 400 600 250])
h = ((2/3).^n).*( escalon(n)-escalon(n-5) );
stem(n,h,'filled','LineWidth',2)
title('h(n)')
xlabel('n')

%b) Grafique y(n) = x(n) * h(n)
figure('Position',[500 400 600 250])
y = conv(x,h);
n = 0:8;
stem(n,y,'filled','LineWidth',2)
title('y(n)')
xlabel('n')


%Ejercicio 2
% a) Matriz H
n = 0:3;
figure('Position',[500 400 600 250])
h = ((1/3).^n).*( escalon(n)-escalon(n-4) );
h = convmtx(h,4).';
sym(h)
% b) Grafica de la convolucion y = x*h;
n = 0:3;
x = ((1/2).^n).*( escalon(n)-escalon(n-4) );
y = x.*h;
y = sum(y,2);
n = 0:6;
stem(n,y,'filled','LineWidth',2)
title('h(n)')
xlabel('n')


%Ejercicio 3
% a) Matriz X
n = 0:3;
figure('Position',[500 400 600 250])
x = ((1/2).^n).*( escalon(n)-escalon(n-4) );
x = convmtx(x,4).';
sym(x)
% b) Grafica de la convolucion y = x*h;
n = 0:3;
h = ((1/3).^n).*( escalon(n)-escalon(n-4) );
y = x.*h;
y = sum(y,2);
n = 0:6;
stem(n,y,'filled','LineWidth',2)
title('h(n)')
xlabel('n')






