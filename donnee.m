function [Val,nbfich]=donnee

fichier=dir('*.res');

fichier={fichier.name};
nbfich=numel(fichier);
for i=1:nbfich;
    
   Val{i}=collect(fichier{i});
   
   
   Val{i}{2,3}=deg2rad(Val{i}{2,3});%convertion phase en radian;
   
   Val{i}{2,5}=deg2rad(Val{i}{2,5});%convertion erreur phase en radian;
   
   Val{i}{2,4}=Val{i}{2,2}.*Val{i}{2,4}/100;%Erreur Amplitude
   
   Val{i}{2,7}=Val{i}{2,2}.*cos(Val{i}{2,3});%Partie Reel
   
   Val{i}{2,8}=Val{i}{2,2}.*sin(Val{i}{2,3});%Partie imaginaire
   
   Val{i}{2,9}=Val{i}{2,4}.*cos(Val{i}{2,3})-Val{i}{2,2}.*sin(Val{i}{2,3}).*Val{i}{2,5};%Erreur Reel
   
   Val{i}{2,10}=Val{i}{2,4}.*sin(Val{i}{2,3})+Val{i}{2,2}.*cos(Val{i}{2,3}).*Val{i}{2,5};%Erreur Imaginaire
  

%    Val{i}{2,9}=(Val{i}{2,2}+Val{i}{2,4}).*(cos(Val{i}{2,3}).*cos(Val{i}{2,5})+sin(Val{i}{2,3}).*sin(Val{i}{2,5}))-Val{i}{2,2}.*cos(Val{i}{2,3});
%    
%    Val{i}{2,10}=(Val{i}{2,2}+Val{i}{2,4}).*(sin(Val{i}{2,3}).*cos(Val{i}{2,5})+cos(Val{i}{2,3}).*sin(Val{i}{2,5}))-Val{i}{2,2}.*sin(Val{i}{2,3});
%    

   
end
