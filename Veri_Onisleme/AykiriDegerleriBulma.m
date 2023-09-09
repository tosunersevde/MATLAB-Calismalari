function yeniVeri = AykiriDegerleriBulma(veri)

yeniVeri = veri; 
nitelikSayisi = size(veri,2);

for k=1:nitelikSayisi
    siraliVeriler = sort(yeniVeri(:,k));
    siraliVeriler = siraliVeriler(~isnan(siraliVeriler));
    siraliVerilerAdet = size(siraliVeriler,1);
    sutun = yeniVeri(:,k);
    
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

    altSinir = Q1 - (IQR * (1.5));
    ustSinir = Q3 + (IQR * (1.5));

    tekilVeriler = unique(siraliVeriler);
    tekilVeriAdet = size(tekilVeriler, 1);

    aykiriDegerler = [];

    for i=1:tekilVeriAdet
        if ~isnan(sutun(i,1))
            if tekilVeriler(i,1)< altSinir || tekilVeriler(i,1)> ustSinir
                aykiriDeger = tekilVeriler(i,1);
                aykiriDegerler = [aykiriDegerler, aykiriDeger];
            end
        end
    end

    fprintf('%d.Sutun Aykiri Degerleri: ',k);
    fprintf('\n');
    disp(aykiriDegerler);
    fprintf('\n');
end




