
n=-3:15;
escalon = @(n) n>=0;
x = zeros(20)
x = (4/5).^n.*(escalon(n)-escalon(n-6));
subplot(211)
stem(n,x,'filled','LineWidth',3)
xlim([-3 15]);
ylim([-.2 1])

subplot(212)
h = zeros(1,33);
n=-12:20;
h = escalon(n-1)-escalon(n-12);
stem(n,h,'filled','LineWidth',3)
xlim([-3 15]);
ylim([-.2 1])