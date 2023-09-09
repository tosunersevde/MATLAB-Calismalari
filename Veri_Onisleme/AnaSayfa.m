clc;
%clear all;

veri = xlsread("Meme_Kanseri_Verileri.xlsx");

while(1==1)
    disp("[0] - Verileri Gosterme");
    disp("[1] - Ortalama Bazli Tamamlama");
    disp("[2] - Ortalama Bulma");
    disp("[3] - Mod Bulma");
    disp("[4] - Medyan Bulma");
    disp("[5] - Frekans Bulma");
    disp("[6] - Ceyrekler Arasi Aralik(IQR) Bulma");
    disp("[7] - Aykiri Degerleri Bulma");
    disp("[8] - Varyans ve Standart Sapma Bulma");
    disp("[9] - Bes Sayi Ozeti");
    disp("[10]- Kutu Grafigi Gosterme");
    disp("[11]- Cikis");
    
    secim = input('Secim Yapiniz: ');
    if  secim == 0
        disp(veri);
    elseif  secim == 1
        yeniVeri = OrtalamaTamamlama(veri);
        %disp(yeniVeri);
    elseif secim == 2
        yeniVeri = OrtalamaBulma(veri);     
    elseif secim == 3
        yeniVeri = ModBulma(veri);   
    elseif secim == 4
        yeniVeri = MedyanBulma(veri);      
    elseif secim == 5
        sutun = input('Sutun Giriniz: ');
        yeniVeri = FrekansBulma(veri,sutun);
    elseif secim == 6
        yeniVeri = CeyreklerArasiAralikBulma(veri);
    elseif secim == 7
        yeniVeri = AykiriDegerleriBulma(veri);
    elseif secim == 8
        yeniVeri = Varyans_StandartSapma(veri);
    elseif secim == 9
        yeniVeri = BesSayiOzeti(veri);
    elseif secim == 10
        boxplot(veri);
    elseif secim == 11
        break;    
    else
        disp("Hatali Giris! 1-10 Arasi Tercih Yapin!");
    end
    
end
    
clc;
