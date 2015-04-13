%gradient
A = [0 1; 9.81/5 -2/5];
%A = [J(1,1) 0;0  J(2,2)];
[w J]=eig(A);
mnozer = 1;
W=(w./[max(abs(w));max(abs(w))])*10*mnozer;
[x y] = meshgrid([-10*mnozer:1:10*mnozer],[-10*mnozer:1:10*mnozer]);
dx = [A(1,1)*x + A(1,2)*y];     %x'=Ax
dy = [A(2,1)*x + A(2,2)*y];     %x'=Ax
figure; hold on; grid on;
quiver(x,y,dx,dy);
if isreal(W)
    plot([-W(1,1) W(1,1)],[-W(2,1) W(2,1)],'k-');
    plot([-W(1,2) W(1,2)],[-W(2,2) W(2,2)],'k-');
end

%przyk³adowe trajektorie
T=6;
a=[0:(pi/5):(2*pi)];
X1=[cos(a);sin(a)];
X2=(X1./[max(abs(X1));max(abs(X1))])*10*mnozer;
for l=[1:length(a)]
    x0=X2(:,l);
    sim('portret', T);
    plot(x(:,1),x(:,2),'k-');
end

%opis
axis([-10*mnozer 10*mnozer -10*mnozer 10*mnozer]);

xlabel('x1');
ylabel('x2');
hold on; plot(w(1,1),w(2,1),'r.'); hold on; plot(w(2,1),w(2,2), 'm.');