function yeniVeri = Varyans_StandartSapma(veri)

yeniVeri = veri; 
satirSayisi = size(veri,1);
nitelikSayisi = size(veri,2);

for m=1:nitelikSayisi
    sutun = veri(:,m);
    
    satirSayisi2 = size(sutun,1);
    
    toplam = 0;
    for j=1:satirSayisi
        if ~isnan(sutun(j,1))
            toplam = toplam + sutun(j,1);
        end
    end
    ortalama = toplam / satirSayisi;

    toplam2 = 0;
    for k=1:satirSayisi2
        toplam2 = toplam2 + (~isnan(sutun(k,1)) - ortalama)^2;
    end
    
    varyans = toplam2/(satirSayisi2-1);
    standartSapma = sqrt(varyans);

    fprintf('%d.Sutun Varyansi:',m);
    disp(varyans);
    fprintf('%d.Sutun Standart Sapmasi:',m);
    disp(standartSapma);
    fprintf('\n');
end


