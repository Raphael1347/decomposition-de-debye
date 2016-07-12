function [ Val ] = collect(fich)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


fid=fopen(fich);

nom={'Freq', 'Amp', 'Phase' ,'Err-Amp' ,'Err-Phase', 'Courant','Réel','Imaginaire', 'Err-Reel','Err-Im'};
deblig=[60315;60510;60705;60900;61095;61290;61485;61680;61875;62070;62265;62460;62655;62850;63045;63240;63435;63630;63825;64020;64215;64410;];

Val{3,1}=sprintf('%s',fich(1:end-4));

for i=1:10;
    Val{1,i}=nom(1,i);
end

for j=2:23;
    fseek(fid,deblig(j-1)+96,-1);
    
    for i=1:6;
        Val{2,i}(j-1)=str2double(fscanf(fid,'%s',1));
        
    end
end


fclose(fid);
end


