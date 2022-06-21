clear 
clc
close all
n=-5:10;
figure('Position',[500 400 600 250])
escalon = @(n) n>=0;
x = (4/5).^n.*(escalon(n)-escalon(n-6));
h = escalon(n)-escalon(n-11);
y = conv(x,h);
n = -10:20;
stem(n,y,'filled','LineWidth',3)
xlim([-5,20]);

%2.Utilice MATLAB para  crear  una  animación  que  muestre el  método  gráfico para  calcularla convoluciónde  las secuenciasdel inciso  anterior. Gráfiquecada  uno  de  los  casos  analizados en el método de convolucióngráfica.
figure('Position',[500 400 600 250])
n = -15:20;
x1 = @(n) (4/5).^n.*(escalon(n)-escalon(n-6));
h1 = @(n) escalon(n)-escalon(n-11);
yconv = zeros(1,36);

for k = n
   
    y =@(n) conv(x1(k),h1(n-k));
    yconv =+ yconv + y(n) ;
    
    subplot(311)
    stem(n,x1(n),'filled','LineWidth',3),title('x(n)'),xlabel('n_x'),ylabel('A_y'),xlim([-5,20]);
    
    subplot(313)
    stem(n,yconv,'filled','LineWidth',3),title('x(n) * h(n-k)'),xlabel('n_x'),ylabel('A_y'),xlim([-5,20]);
    drawnow
    pause(0.1)
    
    subplot(312)
    stem(n,h1(n-k),'filled','LineWidth',3),title('h(n-k)'),xlabel('n_x'),ylabel('A_y'),xlim([-5,20]);
    drawnow
    pause(0.1)
    
    
end

