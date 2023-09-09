function yeniVeri = ModBulma(veri)

yeniVeri = veri; 
nitelikSayisi = size(veri,2);

for k=1:nitelikSayisi
    siraliVeriler = sort(yeniVeri(:,k));
    tekilVeriler = unique(siraliVeriler);
    tekilVeriAdet = size(tekilVeriler, 1);
    
    tekilVeriler = [tekilVeriler zeros(tekilVeriAdet,1)];

    for i=1:tekilVeriAdet
        veriler = yeniVeri(:,k);
        deger = tekilVeriler(i,1);
        sonucDizi = veriler == deger;
        tekilVeriler(i,2) = sum(sonucDizi);
    end

    maxFrekans = max(tekilVeriler(:,2));
    modIndexler = find(tekilVeriler(:,2) == maxFrekans);

    fprintf('%d.Sutunun Modlari\n',k);
    for i=1:size(modIndexler,1)
        fprintf('%d ', tekilVeriler(modIndexler(i,1),1));
    end
    fprintf('\n');
end




