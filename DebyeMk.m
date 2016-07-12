clear
clc
close all


[Val,nbfich]=donnee;


for i=1:nbfich
    R0=Val{i}{2,2}(end);
    w=Val{i}{2,1};
    Val{i}{1,11}='mk';
    [Val{i}{2,11},t]=DebyeDecomposition(Val{i}{2,7},Val{i}{2,8},w,R0);
    
   Val{i}{1,12}='Zmodel';
   Val{i}{1,13}='Zmr';
   Val{i}{1,14}='Zmi';
    Val{i}{2,12}=R0.*(1-Val{i}{2,11}.'*(1-1./(1+1i.*t*w)));
    Val{i}{2,13}=real(Val{i}{2,12});
    Val{i}{2,14}=imag(Val{i}{2,12});
% end






% for i=1:nbfich
   fig=figure('name',Val{i}{3,1},'numbertitle','off');

    subplot(2,2,1)
    
plot(Val{i}{2,7},-Val{i}{2,8},'x',Val{i}{2,13},-Val{i}{2,14})

xlabel('Réel')
ylabel('Imaginaire')
ax = get(fig,'CurrentAxes');
set(ax,'XScale','linear','YScale','linear') 


Znr=Val{i}{2,7};
Zni=Val{i}{2,8};
Znr2=Val{i}{2,13};
Zni2=Val{i}{2,14};


   subplot(2,2,2)
Amp=sqrt(Znr.^2+Zni.^2);
Amp2=sqrt(Znr2.^2+Zni2.^2);

semilogx(w,Amp,'x')
hold on
semilogx(w,Amp2)

xlabel('Fréquence angulaire')
ylabel('Amplitude de Z*')


subplot(2,2,3)

Phase=atan(Zni./Znr);
Phase2=atan(Zni2./Znr2);

loglog(w,-Phase,'x')
hold on
loglog(w,-Phase2)

xlabel('Fréquence angulaire')
ylabel('Phase')

end
