function [ mk,t] = DebyeDecomposition( Zr,Zi,w,R0 )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


t=logspace(-6,10,50000).';
Z=Zr+1i.*Zi;
Zn=(R0-Z)./R0;

Znr=real(Zn);
Zni=imag(Zn);

Zn=[Znr Zni].';

A1=(t*w).^2./(1+(t*w).^2);
A2=(t*w)./(1+(t*w).^2);
A=[A1 A2].';


mk=lsqnonneg(A,Zn);
end

