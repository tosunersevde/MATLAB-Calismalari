function yeniVeri = OrtalamaTamamlama(veri)

yeniVeri = veri; 
satirSayisi = size(veri,1);
nitelikSayisi = size(veri,2);

for k=1:nitelikSayisi
    sutun = veri(:,k);
    for i=1:satirSayisi
        if isnan(sutun(i,1))
            sinif = veri(i,nitelikSayisi);
            toplam = 0;
            for j=1:satirSayisi
                if veri(j,nitelikSayisi) == sinif && ~isnan(sutun(j,1))
                    toplam = toplam + sutun(j,1);
                end
            end
            ortalama = toplam / satirSayisi;
            disp(ortalama);

            yeniVeri(i,k)=ortalama;
        end
    end  
end



