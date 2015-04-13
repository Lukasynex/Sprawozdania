%A = [2 0;0 -3]; % rzeczywiste pierwiastki
%A = [-3 0;0 -3]; % rzeczywiste pierwiastek podwójny
%A = [0 -1;0 -1]; %rzeczywisty, granica stabilnoœci
%A = [0 4;1 0]; %
%A = [-1 2;5 1];
A = [7 0;0 11];

T = 6;
[w J] = eig(A);
figure; hold on; grid on;
a = 0:(pi/10):(2*pi); X1 = [cos(a); sin(a)];
X2 = X1./[max(abs(X1));max(abs(X1))]; M = size(X2,2);
for m = 1:M
        x0 = X2(:,m);
        puste = sim('modelfixed', T);
        plot(x(:,1),x(:,2),'k-');
        plot([0,w(1,1)],[0,w(2,1)], 'k-', [0,w(1,2)],[0,w(2,2)], 'k-');
        % title('lambda (A) = [',num2str(J(1,1)), ',', num2str(J(2,2)), ']');
        xlabel('x1');ylabel('x2');
end