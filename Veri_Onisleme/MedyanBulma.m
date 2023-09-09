function yeniVeri = MedyanBulma(veri)

yeniVeri = veri; 
satirSayisi = size(veri,1);
nitelikSayisi = size(veri,2);

for k=1:nitelikSayisi
    siraliVeriler = sort(yeniVeri(:,k));
    if mod(satirSayisi,2)~=0
        medyan = siraliVeriler( ((satirSayisi+1)/2) ,1);
    else
        deger1 = siraliVeriler( floor((satirSayisi+1)/2) ,1);   
        deger2 = siraliVeriler( ceil((satirSayisi+1)/2) ,1); 
        medyan = (deger1+deger2) / 2;
    end
    fprintf("%d.Sutun",k);
    disp(medyan);
end





