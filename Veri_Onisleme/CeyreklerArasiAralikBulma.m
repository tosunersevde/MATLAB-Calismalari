function yeniVeri = CeyreklerArasiAralikBulma(veri)

yeniVeri = veri; 
nitelikSayisi = size(veri,2);

for k=1:nitelikSayisi
    siraliVeriler = sort(yeniVeri(:,k));
    siraliVeriler = siraliVeriler(~isnan(siraliVeriler));
    siraliVerilerAdet = size(siraliVeriler,1);

    indexQ1 = (25/100)*(siraliVerilerAdet+1);
    if mod(indexQ1,1)>0
        index1 = floor(indexQ1);
        index2 = ceil(indexQ1);
        Q1 = (siraliVeriler(index1,1)+siraliVeriler(index2,1))/2;
    else
        Q1 = siraliVeriler(indexQ1,1);
    end

    indexQ3 = (75/100)*(siraliVerilerAdet+1);
    if mod(indexQ3,1)>0
        index1 = floor(indexQ3);
        index2 = ceil(indexQ3);
        Q3 = (siraliVeriler(index1,1)+siraliVeriler(index2,1))/2;
    else
        Q3 = siraliVeriler(indexQ3,1);
    end

    IQR = Q3 - Q1;

    fprintf('%d.Sutun IQR Degeri: ',k);
    disp(IQR);
end






