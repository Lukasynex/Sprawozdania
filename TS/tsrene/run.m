%A=[6 2;-1 10];
%A=[1 0 ;0 1];
%A = [1 2;15 2];

%create_plot
%title('gwiazda [AS]');
%title('wêze³ niestabilny');

%A=[-2 2;1 -3];
%create_plot
%title('wêze³ asymptotycznie stabilny');
%A=[-1/2 1/2;-1/2 -3/2];
%create_plot
%title('wêze³ zdegenerowany asymptotycznie stabilny');

%A= [-8 -5;5 2];
%create_plot
%title('wêze³ zdegenerowany asymptotycznie stabilny');

%A = [3/7 0;0 3/7];
%create_plot
%title('gwiazda');
%A = [5/3 -1/3; 1/3 1];
%create_plot
%title('gwiazda niestabilna');

%A = [1/3 -2; 1/3 -2];
%create_plot
%title('jeden pierwiastek zerowy');

A = [0 1 ;0 0];
create_plot
title('dwa pierwiastki zerowe');



%A=[-3 -2;2 2];
%create_plot%title('siod³o niestabilne');
%A=[0 -5;5 6];
%A = [0 1/2;-5/2 1];
%create_plot
%title('ognisko niestabilne');

%A=[-1 2;-1 1];
%A = [0 0.5;-0.5 0];
%A = [-3 37;-4 3];
%A = [-0.2 -29/100;1 0.2];
%create_plot
%title('œrodek stabilny');


%A=[-4 2;2 -1];
%create_plot
%title('L1=0 L2<0 [S]');
%A=[0 5;0 0];
%create_plot
%title('L1=0 L2=0 lin.zal [NS]');
%A=[0 0;0 0];
%create_plot
%title('zerowa macierz A');