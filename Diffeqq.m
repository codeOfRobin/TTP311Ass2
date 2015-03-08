function [ dx ] = Diffeqq( t,x,temp,W0,P0,L0)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

A0=[5.9874e5 ; 1.8942e10 ; 2.8558e9 ]
E0=[1.9880e4 ; 2.3271e4 ; 2.2845e4]
Ac=[4.3075e7 ; 1.2114e10 ; 1.6377e10]
Ec=[1.8806e4 ; 2.0670e4 ; 2.0107e4]
delH=[1.918e1 ; -5.9458e3 ; -4.0438e3]
delS=[-7.8846e0 ; 9.4374e-1 ; -6.9457e0]
R=1.9858775
dx=zeros(3,1)
kf=zeros(3,1)
kb=zeros(3,1)
Keq=zeros(3,1)
for i=[1:1:3]
    kf(i)=A0(i)*exp(-E0(i)/(R*temp))+ Ac(i)*exp(-Ec(i)/(R*temp))*x(2)
    Keq(i)=exp((delS(i)/R)-(delH(i)/(R*temp)))
    kb(i)=kf(i)/Keq(i)
end

W=W0+P0-x(2);
dx(1)= -kf(1)*x(1)*W + kb(1)*x(3) - kf(3)*x(2)*x(1) + kb(3)*(x(2)-x(3));
dx(2)= kf(1)*x(1)*W - kb(1)*x(3) - kf(2)*x(2)*x(2) + kb(2)*(L0-x(1)-x(2))*W;
dx(3)= kf(1)*x(1)*W - kb(1)*x(3) - 2*kf(2)*x(3)*x(2) + 2*kb(2)*(x(2)-x(3))*W - 2*kf(2)*x(3)*x(1) + kb(3)*x(3);

end

