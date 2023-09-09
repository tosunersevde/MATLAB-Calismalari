function yeniVeri = OrtalamaBulma(veri)

yeniVeri = veri; 
satirSayisi = size(veri,1);
nitelikSayisi = size(veri,2);

for k=1:nitelikSayisi
    sutun = veri(:,k);
    toplam = 0;
    for j=1:satirSayisi
        if ~isnan(sutun(j,1))
            toplam = toplam + sutun(j,1);
        end
    end
    ortalama = toplam / satirSayisi;
    fprintf("%d.Sutun",k);
    disp(ortalama);
end



