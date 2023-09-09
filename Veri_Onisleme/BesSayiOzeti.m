function yeniVeri = BesSayiOzeti(veri)

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

    if mod(siraliVerilerAdet,2)~=0
        medyan = siraliVeriler( ((siraliVerilerAdet+1)/2) ,1);
    else
        deger1 = siraliVeriler( floor((siraliVerilerAdet+1)/2) ,1);   
        deger2 = siraliVeriler( ceil((siraliVerilerAdet+1)/2) ,1); 
        medyan = (deger1+deger2) / 2;
    end

    indexQ3 = (75/100)*(siraliVerilerAdet+1);
    if mod(indexQ3,1)>0
        index1 = floor(indexQ3);
        index2 = ceil(indexQ3);
        Q3 = (siraliVeriler(index1,1)+siraliVeriler(index2,1))/2;
    else
        Q3 = siraliVeriler(indexQ3,1);
    end

    minDeger = min(yeniVeri(:,k));
    maxDeger = max(yeniVeri(:,k));

    fprintf('%d.Sutun',k);
    fprintf('\nminDeger: %d\n',minDeger);
    fprintf('Q1: %d\n',Q1);
    fprintf('Medyan: %d\n',medyan);
    fprintf('Q3: %d\n',Q3);
    fprintf('maxDeger: %d\n\n',maxDeger);
end

