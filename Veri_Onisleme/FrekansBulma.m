function yeniVeri = FrekansBulma(veri,sutun)

yeniVeri = veri; 
siraliVeriler = sort(yeniVeri(:,sutun));
siraliVeriler = siraliVeriler(~isnan(siraliVeriler));

tekilVeriler = unique(siraliVeriler);
tekilVeriAdet = size(tekilVeriler, 1);
tekilVeriler = [tekilVeriler zeros(tekilVeriAdet,1)];

for i=1:tekilVeriAdet
    veriler = yeniVeri(:,sutun);
    deger = tekilVeriler(i,1);
    sonucDizi = veriler == deger;
    tekilVeriler(i,2) = sum(sonucDizi);
end

fprintf('%d. Sutun Frekans Degerleri:\n',sutun);
disp(tekilVeriler);

bar(tekilVeriler(:,1),tekilVeriler(:,2));





