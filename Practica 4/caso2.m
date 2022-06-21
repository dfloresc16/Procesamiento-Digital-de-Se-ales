
n=-12:6;
escalon = @(n) n>=0;
x = (4/5).^n.*(escalon(n)-escalon(n-6));
subplot(211)
stem(n,x,'filled','LineWidth',3)
ylim([-.2 1])

subplot(212)
h = zeros(1,33);
n=-12:20;
h = escalon(n+9)-escalon(n-2);
stem(n,h,'filled','LineWidth',3)
xlim([-12 6]);
ylim([-.2 1])