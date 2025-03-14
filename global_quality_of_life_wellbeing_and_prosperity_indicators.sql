-- Dünya Bankası, BM, WHO, UNESCO gibi uluslararası kuruluşların yayınladığı gerçek veriler


-- Uluslararasi Yasam Kalitesi Veritabani Tablo Sablonu
CREATE TABLE IF NOT EXISTS ulke_yasam_kalitesi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ulke_adi VARCHAR(100) NOT NULL,
    ulke_kodu CHAR(3) NOT NULL,
    bolge VARCHAR(100) NOT NULL,
    kita VARCHAR(50) NOT NULL,
    yil INT NOT NULL,
    nufus BIGINT,
    baskent VARCHAR(100),
    resmi_dil VARCHAR(100),
    para_birimi VARCHAR(50),
    
    -- Ekonomik gostergeler
    gsyih DECIMAL(20, 2), -- Gayri Safi Yurtici Hasila (USD)
    kisi_basi_gsyih DECIMAL(20, 2), -- Kisi basina GSYIH (USD)
    buyume_orani DECIMAL(8, 2), -- Yillik ekonomik buyume orani (%)
    issizlik_orani DECIMAL(8, 2), -- Issizlik orani (%)
    enflasyon_orani DECIMAL(8, 2), -- Enflasyon orani (%)
    asgari_ucret DECIMAL(10, 2), -- Aylik asgari ucret (USD)
    ortalama_maas DECIMAL(10, 2), -- Aylik ortalama maas (USD)
    
    -- Saglik gostergeleri
    yasam_suresi DECIMAL(8, 2), -- Ortalama yasam suresi (yil)
    bebek_olum_orani DECIMAL(8, 2), -- 1000 canli dogumda bebek olum orani
    saglik_harcamalari_gsyih DECIMAL(8, 2), -- GSYIH'nin saglik harcamalarina ayrilan yuzdesi
    doktor_sayisi_per_1000 DECIMAL(8, 2), -- 1000 kisi basina dusen doktor sayisi
    hastane_yatak_sayisi_per_1000 DECIMAL(8, 2), -- 1000 kisi basina dusen hastane yatak sayisi
    asilama_orani DECIMAL(8, 2), -- Cocuk asilama orani (%)
    obezite_orani DECIMAL(8, 2), -- Yetiskin obezite orani (%)
    
    -- Egitim gostergeleri
    okuma_yazma_orani DECIMAL(8, 2), -- Yetiskin okuma yazma orani (%)
    ilkokul_kayit_orani DECIMAL(8, 2), -- Ilkokul kayit orani (%)
    ortaokul_kayit_orani DECIMAL(8, 2), -- Ortaokul kayit orani (%)
    lise_kayit_orani DECIMAL(8, 2), -- Lise kayit orani (%)
    universite_kayit_orani DECIMAL(8, 2), -- Universite kayit orani (%)
    egitim_harcamalari_gsyih DECIMAL(8, 2), -- GSYIH'nin egitime ayrilan yuzdesi
    ogretmen_basina_ogrenci DECIMAL(8, 2), -- Ogretmen basina dusen ogrenci sayisi
    
    -- Cevre gostergeleri
    co2_emisyonu DECIMAL(10, 2), -- Kisi basina CO2 emisyonu (ton)
    yenilenebilir_enerji_orani DECIMAL(8, 2), -- Toplam enerji uretiminde yenilenebilir enerji orani (%)
    orman_alani_yuzdesi DECIMAL(8, 2), -- Toplam arazi alaninda ormanlarin yuzdesi
    temiz_su_erisimi DECIMAL(8, 2), -- Temiz su kaynaklarina erisim orani (%)
    atik_yonetimi_skoru DECIMAL(8, 2), -- Atik yonetimi etkinligi skoru (0-100)
    hava_kalitesi_endeksi DECIMAL(8, 2), -- Hava kalitesi endeksi
    
    -- Altyapi gostergeleri
    internet_kullanim_orani DECIMAL(8, 2), -- Internet kullanim orani (%)
    cep_telefonu_sahiplik_orani DECIMAL(8, 2), -- Cep telefonu sahiplik orani (%)
    elektrik_erisim_orani DECIMAL(8, 2), -- Elektrik erisimi olan nufus orani (%)
    karayolu_agi_km INT, -- Toplam karayolu agi (km)
    demiryolu_agi_km INT, -- Toplam demiryolu agi (km)
    guvenli_konut_erisimi DECIMAL(8, 2), -- Guvenli konut erisimi olan nufus orani (%)
    
    -- Guvenlik gostergeleri
    suc_orani DECIMAL(8, 2), -- 100,000 kisi basina dusen suc sayisi
    cinayet_orani DECIMAL(8, 2), -- 100,000 kisi basina dusen cinayet sayisi
    polis_sayisi_per_1000 DECIMAL(8, 2), -- 1000 kisi basina dusen polis sayisi
    hapishane_nufusu_per_100k DECIMAL(8, 2), -- 100,000 kisi basina dusen hapishane nufusu
    guvenlik_endeksi DECIMAL(8, 2), -- Guvenlik endeksi (0-100)
    
    -- Sosyal refah gostergeleri
    gini_endeksi DECIMAL(8, 2), -- Gelir esitsizligi (0-100, yuksek deger daha fazla esitsizlik)
    yoksulluk_orani DECIMAL(8, 2), -- Yoksulluk siniri altinda yasayan nufus (%)
    sosyal_harcamalar_gsyih DECIMAL(8, 2), -- GSYIH'nin sosyal harcamalara ayrilan yuzdesi
    emeklilik_yasi INT, -- Ortalama emeklilik yasi
    is_yasam_dengesi_endeksi DECIMAL(8, 2), -- Is-yasam dengesi endeksi (0-100)
    
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi DECIMAL(8, 2), -- Genel yasam kalitesi endeksi (0-100)
    ekonomik_endeks DECIMAL(8, 2), -- Ekonomik durum endeksi (0-100)
    saglik_endeksi DECIMAL(8, 2), -- Saglik durumu endeksi (0-100)
    egitim_endeksi DECIMAL(8, 2), -- Egitim endeksi (0-100)
    cevre_endeksi DECIMAL(8, 2), -- Cevre kalitesi endeksi (0-100)
    altyapi_endeksi DECIMAL(8, 2), -- Altyapi endeksi (0-100)
    guvenlik_endeksi_genel DECIMAL(8, 2), -- Guvenlik endeksi genel (0-100)
    sosyal_refah_endeksi DECIMAL(8, 2), -- Sosyal refah endeksi (0-100)
    
    -- Diger endeksler
    mutluluk_endeksi DECIMAL(8, 2), -- Mutluluk endeksi (0-10)
    demokrasi_endeksi DECIMAL(8, 2), -- Demokrasi endeksi (0-10)
    basin_ozgurlugu_endeksi DECIMAL(8, 2), -- Basin ozgurlugu endeksi (0-100)
    cinsiyet_esitligi_endeksi DECIMAL(8, 2), -- Cinsiyet esitligi endeksi (0-1)
    yolsuzluk_algisi_endeksi DECIMAL(8, 2), -- Yolsuzluk algisi endeksi (0-100)
    
    -- Ekstra bilgiler
    iklim_turu VARCHAR(100),
    zaman_dilimi VARCHAR(50),
    yonetim_bicimi VARCHAR(100)
    
    -- Indeks ve kisitlamalar
    #UNIQUE KEY ulke_yil_idx (ulke_kodu, yil)
);


-- Ilk 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 1. Amerika Birlesik Devletleri
('Amerika Birlesik Devletleri', 'USA', 'Kuzey Amerika', 'Amerika', 2023, 331002651, 'Washington D.C.', 'Ingilizce', 'Amerikan Dolari',
    25462700000000.00, 76398.92, 2.10, 3.70, 3.40, 1256.00, 5783.00,
    78.79, 5.40, 17.80, 2.60, 2.90, 94.50, 36.20,
    99.00, 99.50, 99.20, 96.50, 88.20, 5.00, 14.30,
    14.70, 12.10, 33.90, 99.20, 75.00, 58.00,
    91.60, 85.70, 100.00, 6586610, 149910, 98.50,
    398.50, 4.96, 2.40, 639.00, 73.50,
    41.10, 17.80, 19.30, 66, 68.30,
    82.50, 80.30, 76.20, 85.40, 69.80, 89.70, 73.50, 74.20,
    6.90, 7.85, 72.00, 0.74, 67.00,
    'Karisik (Iliman/Kontinental/Subtropikal)', 'UTC-5 ile UTC-10', 'Federal Baskanci Cumhuriyet'),

-- 2. Cin
('Cin', 'CHN', 'Dogu Asya', 'Asya', 2023, 1439323776, 'Pekin', 'Mandarin Cince', 'Yuan',
    17963000000000.00, 12556.33, 5.20, 5.30, 2.00, 370.00, 1000.00,
    77.10, 7.00, 5.35, 2.20, 4.30, 99.00, 6.20,
    96.80, 99.10, 98.60, 88.80, 55.00, 3.50, 16.70,
    7.40, 26.70, 22.90, 92.80, 55.00, 41.00,
    70.40, 98.60, 100.00, 4960600, 150000, 93.40,
    33.80, 0.50, 1.20, 121.00, 80.20,
    38.50, 0.60, 8.40, 60, 43.30,
    68.20, 70.40, 71.50, 74.60, 48.90, 75.30, 80.20, 46.50,
    5.12, 2.21, 22.00, 0.68, 45.00,
    'Karisik (Kontinental/Subtropikal/Tropikal)', 'UTC+8', 'Komünist Parti Yonetiminde Tek Parti Sosyalist Cumhuriyet'),

-- 3. Japonya
('Japonya', 'JPN', 'Dogu Asya', 'Asya', 2023, 126476461, 'Tokyo', 'Japonca', 'Japon Yeni',
    5378000000000.00, 42498.91, 1.10, 2.60, 2.50, 1600.00, 3500.00,
    84.50, 1.90, 10.90, 2.50, 13.10, 94.00, 4.30,
    99.00, 99.80, 99.60, 99.10, 63.20, 3.50, 16.10,
    8.70, 18.50, 68.50, 99.90, 83.00, 79.00,
    93.30, 83.20, 100.00, 1218772, 27311, 99.80,
    22.30, 0.26, 2.00, 39.00, 89.80,
    32.90, 15.70, 22.10, 65, 50.20,
    87.50, 84.60, 92.30, 86.70, 81.90, 94.80, 89.80, 81.40,
    5.87, 8.13, 80.00, 0.65, 73.00,
    'Iliman', 'UTC+9', 'Parlamenter Anayasal Monarsi'),

-- 4. Almanya
('Almanya', 'DEU', 'Bati Avrupa', 'Avrupa', 2023, 83783942, 'Berlin', 'Almanca', 'Euro',
    4223000000000.00, 50801.70, 0.20, 3.10, 6.90, 1740.00, 4100.00,
    81.20, 3.30, 11.70, 4.30, 8.00, 95.00, 22.30,
    99.00, 99.60, 99.40, 97.00, 70.30, 5.10, 12.20,
    8.40, 46.20, 32.70, 100.00, 85.00, 75.00,
    92.00, 84.20, 100.00, 830000, 33590, 99.90,
    220.40, 0.95, 3.40, 77.00, 78.50,
    31.70, 14.80, 25.90, 65, 70.00,
    85.90, 83.10, 87.80, 88.70, 84.50, 90.30, 78.50, 88.30,
    7.03, 8.67, 84.00, 0.79, 80.00,
    'Iliman', 'UTC+1/+2', 'Federal Parlamenter Cumhuriyet'),

-- 5. Hindistan
('Hindistan', 'IND', 'Guney Asya', 'Asya', 2023, 1380004385, 'Yeni Delhi', 'Hintce, Ingilizce', 'Hint Rupisi',
    3387000000000.00, 2256.59, 7.20, 7.20, 5.70, 120.00, 437.00,
    69.70, 28.30, 3.50, 0.90, 0.50, 85.00, 3.90,
    74.40, 94.30, 86.50, 61.80, 28.10, 3.80, 28.70,
    1.90, 10.10, 24.40, 93.30, 35.00, 42.00,
    43.00, 84.30, 97.80, 5903293, 68525, 82.10,
    211.70, 3.00, 1.30, 33.00, 56.70,
    35.70, 21.90, 7.60, 60, 36.40,
    49.70, 48.30, 53.20, 58.40, 40.90, 52.40, 56.70, 38.20,
    3.77, 6.91, 50.00, 0.49, 40.00,
    'Karisik (Tropikal/Subtropikal/Alpin)', 'UTC+5:30', 'Federal Parlamenter Cumhuriyet'),

-- 6. Birlesik Krallik
('Birlesik Krallik', 'GBR', 'Kuzey Avrupa', 'Avrupa', 2023, 67886011, 'Londra', 'Ingilizce', 'Sterlin',
    3198000000000.00, 46510.28, 0.40, 4.20, 7.90, 1950.00, 3750.00,
    81.20, 3.70, 10.20, 2.80, 2.50, 93.00, 27.80,
    99.00, 99.70, 99.50, 96.80, 66.40, 5.40, 17.10,
    5.40, 43.10, 13.10, 100.00, 79.00, 73.00,
    94.90, 78.50, 100.00, 394428, 16837, 99.60,
    74.00, 1.20, 2.40, 132.00, 78.00,
    34.80, 18.60, 20.60, 66, 65.30,
    84.10, 78.20, 84.50, 87.60, 75.40, 89.10, 78.00, 78.30,
    6.94, 8.24, 78.00, 0.78, 78.00,
    'Iliman Denizel', 'UTC+0/+1', 'Parlamenter Anayasal Monarsi'),

-- 7. Fransa
('Fransa', 'FRA', 'Bati Avrupa', 'Avrupa', 2023, 65273511, 'Paris', 'Fransizca', 'Euro',
    2938000000000.00, 44853.13, 0.80, 7.10, 5.70, 1645.00, 3720.00,
    82.50, 3.80, 11.30, 3.40, 5.90, 90.00, 21.60,
    99.00, 99.80, 99.50, 95.40, 68.70, 5.40, 18.80,
    4.60, 19.10, 31.50, 100.00, 82.00, 71.00,
    89.40, 70.30, 100.00, 1053215, 29213, 99.80,
    47.00, 1.20, 3.40, 100.00, 77.40,
    32.40, 14.80, 31.70, 64, 67.20,
    83.20, 77.50, 86.20, 87.30, 76.40, 88.30, 77.40, 82.70,
    6.69, 7.99, 77.00, 0.79, 69.00,
    'Karisik (Iliman Denizel/Kontinental/Akdeniz)', 'UTC+1/+2', 'Yarı Baskanci Cumhuriyet'),

-- 8. Brezilya
('Brezilya', 'BRA', 'Guney Amerika', 'Amerika', 2023, 212559417, 'Brasilia', 'Portekizce', 'Real',
    1891000000000.00, 8857.55, 3.10, 7.90, 4.30, 242.00, 780.00,
    75.50, 12.40, 9.50, 2.20, 2.20, 83.00, 22.10,
    93.20, 96.30, 85.60, 69.30, 51.30, 6.10, 20.90,
    2.20, 83.70, 59.40, 98.20, 60.00, 54.00,
    81.30, 108.10, 100.00, 1580964, 29849, 91.70,
    1380.40, 22.60, 1.80, 357.00, 33.40,
    53.30, 20.00, 13.10, 65, 54.30,
    59.80, 53.20, 64.30, 66.70, 76.80, 61.40, 33.40, 49.80,
    6.33, 6.86, 58.00, 0.68, 38.00,
    'Tropikal', 'UTC-2 ile UTC-5', 'Federal Baskanci Cumhuriyet'),

-- 9. Italya
('Italya', 'ITA', 'Guney Avrupa', 'Avrupa', 2023, 60461826, 'Roma', 'Italyanca', 'Euro',
    2058000000000.00, 34349.40, 0.40, 7.80, 8.10, 1480.00, 2890.00,
    82.70, 2.60, 8.80, 4.00, 3.20, 92.00, 19.90,
    99.00, 99.50, 99.30, 94.70, 63.90, 4.10, 11.40,
    5.30, 18.20, 31.80, 99.90, 76.00, 67.00,
    74.40, 130.40, 100.00, 487700, 24179, 99.30,
    46.10, 0.60, 4.50, 101.00, 72.30,
    35.90, 20.10, 28.90, 67, 61.50,
    79.70, 73.90, 85.60, 84.70, 72.90, 83.50, 72.30, 76.20,
    6.47, 7.68, 70.00, 0.73, 56.00,
    'Karisik (Akdeniz/Alpin)', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 10. Kanada
('Kanada', 'CAN', 'Kuzey Amerika', 'Amerika', 2023, 37742154, 'Ottawa', 'Ingilizce, Fransizca', 'Kanada Dolari',
    2200000000000.00, 58306.03, 1.80, 5.10, 3.90, 1529.00, 4980.00,
    82.05, 4.30, 10.80, 2.80, 2.50, 96.00, 29.40,
    99.00, 99.80, 99.50, 93.20, 68.30, 5.30, 16.20,
    15.50, 18.90, 38.20, 99.80, 82.00, 72.00,
    94.00, 89.70, 100.00, 1042300, 77932, 99.80,
    380.00, 1.76, 1.98, 107.00, 82.90,
    33.30, 14.20, 18.00, 65, 75.20,
    86.80, 82.40, 88.30, 90.50, 79.80, 88.20, 82.90, 80.50,
    7.03, 8.87, 85.00, 0.84, 74.00,
    'Karisik (Kutupsal/Kontinental/Iliman)', 'UTC-3.5 ile UTC-8', 'Federal Parlamenter Demokrasi');

    -- Ikinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 11. Rusya
('Rusya', 'RUS', 'Dogu Avrupa', 'Avrupa', 2023, 145934462, 'Moskova', 'Rusca', 'Ruble',
    1786000000000.00, 12264.13, 1.60, 3.90, 7.40, 170.00, 780.00,
    72.70, 4.90, 5.60, 4.00, 8.10, 97.00, 23.10,
    99.70, 99.40, 99.20, 89.10, 81.90, 4.70, 20.30,
    11.40, 17.30, 49.80, 97.10, 63.00, 38.00,
    85.00, 157.90, 100.00, 1283387, 85500, 98.00,
    515.70, 8.21, 3.20, 392.00, 62.10,
    37.50, 12.60, 16.20, 65, 52.40,
    63.90, 61.20, 72.30, 84.80, 61.20, 73.60, 62.10, 55.70,
    5.38, 3.31, 49.00, 0.73, 28.00,
    'Karisik (Kutupsal/Kontinental/Subtropikal)', 'UTC+2 ile UTC+12', 'Yarı Baskanci Federal Cumhuriyet'),

-- 12. Avustralya
('Avustralya', 'AUS', 'Okyanusya', 'Okyanusya', 2023, 25499884, 'Canberra', 'Ingilizce', 'Avustralya Dolari',
    1683000000000.00, 66001.75, 1.90, 3.70, 6.80, 2300.00, 4550.00,
    83.20, 3.10, 9.30, 3.80, 3.80, 95.00, 29.80,
    99.00, 99.90, 99.80, 93.40, 89.70, 5.10, 13.50,
    15.40, 24.00, 16.20, 100.00, 80.00, 88.00,
    89.60, 87.70, 100.00, 878000, 36000, 98.70,
    167.80, 0.89, 2.20, 167.00, 81.60,
    34.30, 13.20, 19.10, 66, 74.20,
    85.20, 82.10, 88.40, 89.90, 81.30, 87.90, 81.60, 81.40,
    7.16, 8.90, 82.00, 0.71, 73.00,
    'Karisik (Iliman/Tropikal/Kurak/Carpik)', 'UTC+8 ile UTC+11', 'Federal Parlamenter Anayasal Monarsi'),

-- 13. Ispanya
('Ispanya', 'ESP', 'Guney Avrupa', 'Avrupa', 2023, 46754778, 'Madrid', 'Ispanyolca', 'Euro',
    1427000000000.00, 30504.73, 2.50, 12.10, 3.10, 1166.00, 2450.00,
    83.30, 2.60, 9.10, 4.40, 3.00, 96.00, 23.80,
    98.40, 99.80, 99.50, 97.80, 91.20, 4.30, 12.20,
    5.40, 21.40, 37.10, 99.90, 82.00, 73.00,
    93.20, 116.00, 100.00, 683175, 16054, 99.80,
    47.60, 0.62, 3.70, 114.00, 75.60,
    34.70, 21.50, 24.60, 65, 72.90,
    81.40, 72.70, 87.40, 88.50, 75.20, 86.30, 75.60, 79.20,
    6.40, 7.94, 73.00, 0.79, 60.00,
    'Karisik (Akdeniz/Okyanus/Alpin)', 'UTC+1/+2', 'Parlamenter Anayasal Monarsi'),

-- 14. Guney Kore
('Guney Kore', 'KOR', 'Dogu Asya', 'Asya', 2023, 51269185, 'Seul', 'Korece', 'Won',
    1804000000000.00, 35195.56, 1.30, 2.10, 3.70, 1530.00, 3100.00,
    83.20, 2.70, 8.40, 2.40, 12.40, 97.00, 4.70,
    97.90, 99.10, 99.70, 99.30, 98.40, 5.30, 16.50,
    11.60, 4.70, 63.40, 99.90, 86.00, 54.00,
    97.90, 128.80, 100.00, 100428, 4044, 99.60,
    35.10, 0.60, 2.30, 105.00, 86.30,
    35.50, 16.70, 12.90, 61, 52.80,
    80.40, 82.30, 84.20, 90.70, 72.40, 93.70, 86.30, 57.90,
    5.87, 8.00, 72.00, 0.69, 62.00,
    'Iliman', 'UTC+9', 'Baskanci Cumhuriyet'),

-- 15. Meksika
('Meksika', 'MEX', 'Kuzey Amerika', 'Amerika', 2023, 128932753, 'Mexico City', 'Ispanyolca', 'Meksika Pesosu',
    1274000000000.00, 9926.42, 3.10, 3.40, 7.80, 178.00, 507.00,
    75.00, 11.20, 5.40, 2.40, 1.00, 88.00, 28.90,
    95.40, 98.70, 87.20, 63.30, 40.20, 4.90, 27.10,
    3.60, 14.90, 34.50, 99.30, 43.00, 38.00,
    70.10, 96.00, 100.00, 398148, 26704, 90.40,
    1294.50, 29.07, 1.60, 163.00, 39.80,
    45.40, 41.90, 8.20, 65, 43.50,
    56.40, 53.70, 61.20, 67.50, 55.40, 65.20, 39.80, 42.60,
    5.93, 5.57, 55.00, 0.72, 31.00,
    'Karisik (Tropikal/Subtropikal/Kurak)', 'UTC-5 ile UTC-8', 'Federal Baskanci Cumhuriyet'),

-- 16. Endonezya
('Endonezya', 'IDN', 'Guneydogu Asya', 'Asya', 2023, 273523615, 'Cakarta', 'Endonezya Dili', 'Endonezya Rupisi',
    1186000000000.00, 4334.58, 5.20, 5.40, 3.70, 173.00, 385.00,
    71.70, 21.40, 2.90, 0.60, 1.00, 85.00, 6.90,
    96.00, 93.50, 78.70, 53.40, 36.30, 3.60, 17.10,
    2.30, 15.40, 50.20, 89.30, 40.00, 45.70,
    62.60, 149.10, 98.50, 539415, 8159, 80.10,
    145.00, 0.40, 1.60, 35.00, 67.70,
    38.20, 9.20, 4.90, 58, 41.90,
    60.60, 54.20, 57.60, 71.50, 58.40, 64.30, 67.70, 41.10,
    5.24, 6.48, 49.00, 0.65, 38.00,
    'Tropikal', 'UTC+7 ile UTC+9', 'Baskanci Cumhuriyet'),

-- 17. Turkiye
('Turkiye', 'TUR', 'Bati Asya', 'Asya', 2023, 84339067, 'Ankara', 'Turkce', 'Turk Lirasi',
    815000000000.00, 9661.26, 5.10, 10.20, 85.00, 430.00, 850.00,
    77.90, 8.60, 4.30, 2.00, 2.90, 96.00, 32.10,
    96.70, 98.40, 96.20, 85.80, 44.30, 4.30, 17.50,
    5.20, 44.20, 15.40, 98.90, 53.00, 42.00,
    83.30, 96.80, 100.00, 67333, 12710, 92.80,
    215.70, 2.59, 3.20, 335.00, 59.60,
    41.90, 14.40, 12.10, 60, 48.50,
    62.70, 48.20, 73.40, 69.80, 51.40, 70.30, 59.60, 56.20,
    4.74, 4.35, 33.00, 0.64, 38.00,
    'Karisik (Akdeniz/Kontinental/Denizel)', 'UTC+3', 'Baskanci Cumhuriyet'),

-- 18. Hollanda
('Hollanda', 'NLD', 'Bati Avrupa', 'Avrupa', 2023, 17134872, 'Amsterdam', 'Hollandaca', 'Euro',
    990300000000.00, 57765.97, 1.80, 3.70, 2.80, 1725.00, 3700.00,
    81.90, 3.40, 10.10, 3.70, 3.20, 93.00, 20.40,
    99.00, 99.90, 99.80, 99.00, 85.70, 5.40, 15.30,
    8.80, 14.00, 11.20, 100.00, 89.00, 84.00,
    95.60, 70.30, 100.00, 139295, 3055, 99.90,
    63.60, 0.60, 2.40, 63.00, 82.50,
    28.50, 13.60, 16.10, 67, 77.00,
    88.40, 86.10, 86.30, 92.50, 77.10, 92.30, 82.50, 87.30,
    7.41, 8.94, 77.00, 0.74, 82.00,
    'Iliman Denizel', 'UTC+1/+2', 'Parlamenter Anayasal Monarsi'),

-- 19. Suudi Arabistan
('Suudi Arabistan', 'SAU', 'Bati Asya', 'Asya', 2023, 34813871, 'Riyad', 'Arapca', 'Suudi Riyali',
    853900000000.00, 24550.87, 1.80, 6.10, 3.10, NULL, 1600.00,
    75.10, 6.00, 5.70, 2.60, 2.30, 95.00, 35.40,
    97.60, 99.40, 97.80, 94.00, 71.30, 5.10, 11.00,
    17.40, 0.10, 0.50, 100.00, 78.00, 64.00,
    98.10, 123.00, 100.00, 221372, 1378, 97.50,
    67.50, 1.30, 1.60, 197.00, 75.50,
    45.90, 12.70, NULL, 62, 62.00,
    75.30, 81.60, 76.30, 87.10, 48.60, 92.30, 75.50, 62.00,
    6.25, 2.08, 23.00, 0.61, 51.00,
    'Kurak', 'UTC+3', 'Mutlak Monarsi'),

-- 20. Isvicre
('Isvicre', 'CHE', 'Bati Avrupa', 'Avrupa', 2023, 8654622, 'Bern', 'Almanca, Fransizca, Italyanca, Romansca', 'Isvicre Frangi',
    807000000000.00, 93158.16, 0.90, 2.10, 2.20, 3900.00, 6300.00,
    83.60, 3.60, 11.30, 4.30, 4.60, 95.00, 19.50,
    99.00, 99.90, 99.80, 96.60, 60.40, 5.30, 10.20,
    4.30, 59.90, 31.70, 100.00, 91.00, 92.00,
    93.10, 133.20, 100.00, 71540, 5317, 99.90,
    41.20, 0.50, 3.60, 78.00, 88.30,
    33.10, 8.60, 19.60, 65, 81.20,
    92.60, 91.30, 90.10, 88.70, 87.10, 94.60, 88.30, 91.80,
    7.51, 9.09, 79.00, 0.88, 84.00,
    'Iliman Alpin', 'UTC+1/+2', 'Federal Yaridogrudan Demokrasi');

    -- Ucuncu 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 21. Norveç
('Norvec', 'NOR', 'Kuzey Avrupa', 'Avrupa', 2023, 5421241, 'Oslo', 'Norvecce', 'Norvec Kronu',
    482437000000.00, 89202.37, 2.60, 3.20, 3.50, 3500.00, 5800.00,
    83.20, 2.10, 10.50, 5.00, 3.60, 97.00, 23.10,
    100.00, 99.90, 99.80, 97.50, 82.00, 7.60, 9.00,
    8.30, 97.70, 33.20, 100.00, 90.00, 92.00,
    98.00, 96.50, 100.00, 94902, 4200, 99.90,
    55.20, 0.47, 2.20, 63.00, 90.30,
    27.00, 8.40, 25.30, 67, 84.10,
    93.80, 90.40, 93.20, 92.50, 94.80, 92.70, 90.30, 91.50,
    7.39, 9.81, 93.00, 0.91, 84.00,
    'Karisik (Kutupsal/Kontinental/Iliman)', 'UTC+1', 'Anayasal Monarsi'),

-- 22. İsrail
('Israil', 'ISR', 'Orta Dogu', 'Asya', 2023, 8655535, 'Kudus', 'Ibranice, Arapca', 'Yeni Sekel',
    481900000000.00, 55646.52, 2.20, 3.70, 3.10, 1280.00, 3650.00,
    82.70, 3.00, 7.50, 3.60, 3.00, 98.00, 26.10,
    97.80, 99.40, 99.20, 93.60, 60.80, 6.20, 10.90,
    7.00, 4.20, 7.90, 100.00, 77.00, 66.00,
    90.10, 120.70, 100.00, 19555, 1277, 99.70,
    167.70, 1.49, 3.30, 234.00, 76.80,
    39.00, 22.00, 16.00, 67, 61.70,
    78.70, 81.50, 83.20, 86.30, 51.30, 87.60, 76.80, 70.60,
    7.36, 7.97, 69.00, 0.72, 59.00,
    'Karisik (Akdeniz/Kurak)', 'UTC+2/+3', 'Parlamenter Demokrasi'),

-- 23. İsveç
('Isvec', 'SWE', 'Kuzey Avrupa', 'Avrupa', 2023, 10099265, 'Stockholm', 'Isvecce', 'Isvec Kronu',
    585939000000.00, 58015.00, 0.90, 7.50, 9.30, 1850.00, 3900.00,
    82.80, 2.10, 11.00, 4.30, 2.10, 97.00, 20.60,
    99.00, 99.90, 99.80, 99.30, 72.70, 7.60, 10.70,
    3.50, 56.40, 68.70, 100.00, 93.00, 91.00,
    96.40, 122.10, 100.00, 215000, 10908, 99.90,
    111.70, 1.08, 2.00, 61.00, 85.70,
    30.00, 17.10, 25.50, 65, 80.10,
    91.30, 86.40, 91.30, 92.80, 89.20, 91.60, 85.70, 90.50,
    7.38, 9.39, 86.00, 0.86, 83.00,
    'Iliman', 'UTC+1/+2', 'Parlamenter Anayasal Monarsi'),

-- 24. Polonya
('Polonya', 'POL', 'Dogu Avrupa', 'Avrupa', 2023, 37846611, 'Varsova', 'Lehce', 'Zloty',
    679400000000.00, 17945.08, 0.30, 3.00, 11.40, 700.00, 1350.00,
    78.50, 3.80, 6.50, 2.40, 6.60, 96.00, 23.10,
    99.80, 99.30, 98.80, 95.60, 65.80, 5.00, 10.60,
    7.70, 15.80, 30.90, 99.30, 60.00, 61.00,
    83.20, 117.20, 100.00, 425000, 19400, 97.10,
    14.00, 0.70, 2.60, 193.00, 71.70,
    27.20, 14.80, 20.60, 65, 58.10,
    76.30, 74.60, 78.40, 84.90, 66.90, 80.10, 71.70, 68.60,
    6.12, 6.84, 66.00, 0.71, 56.00,
    'Iliman Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 25. Arjantin
('Arjantin', 'ARG', 'Guney Amerika', 'Amerika', 2023, 45195774, 'Buenos Aires', 'Ispanyolca', 'Arjantin Pesosu',
    450530000000.00, 9963.79, -2.50, 6.90, 142.00, 330.00, 600.00,
    77.20, 8.80, 9.10, 4.00, 5.00, 94.00, 28.30,
    99.10, 99.40, 97.90, 89.50, 90.00, 5.50, 12.00,
    4.20, 11.50, 10.70, 99.60, 56.00, 58.00,
    83.30, 126.80, 100.00, 281290, 36917, 97.20,
    544.40, 5.30, 3.90, 230.00, 58.90,
    42.90, 35.50, 13.90, 65, 50.70,
    66.40, 53.30, 76.10, 88.00, 55.50, 75.60, 58.90, 53.20,
    5.97, 6.86, 66.00, 0.71, 38.00,
    'Karisik (Subtropikal/Iliman/Alpin)', 'UTC-3', 'Federal Baskanci Cumhuriyet'),

-- 26. Belçika
('Belcika', 'BEL', 'Bati Avrupa', 'Avrupa', 2023, 11589623, 'Bruksel', 'Flamanca, Fransizca, Almanca', 'Euro',
    594104000000.00, 51263.12, 1.50, 5.70, 1.70, 1725.00, 3460.00,
    81.70, 3.10, 10.70, 3.00, 5.60, 96.00, 22.10,
    99.00, 99.70, 99.60, 98.10, 78.70, 6.60, 9.80,
    8.10, 13.40, 22.80, 100.00, 80.00, 70.00,
    91.50, 96.20, 100.00, 155000, 3602, 99.70,
    65.00, 1.70, 3.40, 88.00, 80.10,
    27.40, 14.80, 28.90, 65, 69.40,
    85.60, 83.30, 86.90, 89.50, 72.90, 89.40, 80.10, 85.20,
    6.77, 7.64, 79.00, 0.74, 73.00,
    'Iliman Denizel', 'UTC+1/+2', 'Federal Parlamenter Anayasal Monarsi'),

-- 27. Tayland
('Tayland', 'THA', 'Guneydogu Asya', 'Asya', 2023, 69799978, 'Bangkok', 'Tayca', 'Baht',
    550000000000.00, 7884.00, 2.60, 1.50, 1.20, 270.00, 740.00,
    77.70, 7.80, 3.80, 0.90, 2.10, 97.00, 10.00,
    93.80, 98.00, 95.60, 77.60, 44.10, 4.10, 16.80,
    3.60, 14.50, 32.70, 99.90, 65.00, 53.00,
    78.00, 180.20, 100.00, 180053, 4507, 95.30,
    81.00, 2.60, 3.30, 344.00, 65.50,
    36.00, 6.20, 3.60, 60, 59.40,
    67.50, 62.80, 72.40, 78.90, 62.40, 77.30, 65.50, 49.60,
    5.98, 6.04, 48.00, 0.71, 36.00,
    'Tropikal', 'UTC+7', 'Anayasal Monarsi'),

-- 28. Nijerya
('Nijerya', 'NGA', 'Bati Afrika', 'Afrika', 2023, 206139589, 'Abuja', 'Ingilizce', 'Naira',
    505000000000.00, 2432.86, 2.90, 33.30, 27.70, 74.00, 176.00,
    54.70, 74.20, 3.90, 0.40, 0.50, 42.00, 8.90,
    62.00, 64.10, 55.70, 44.00, 10.10, 3.05, 36.00,
    0.70, 13.00, 7.70, 71.40, 25.00, 35.00,
    42.00, 99.70, 55.40, 195000, 3798, 42.70,
    1189.20, 34.50, 0.40, 39.00, 35.90,
    35.10, 40.10, 4.70, 50, 32.70,
    36.40, 32.10, 42.30, 38.50, 27.60, 33.20, 35.90, 25.70,
    4.55, 4.44, 45.00, 0.40, 24.00,
    'Tropikal', 'UTC+1', 'Federal Baskanci Cumhuriyet'),

-- 29. İran
('Iran', 'IRN', 'Bati Asya', 'Asya', 2023, 83992949, 'Tahran', 'Farsca', 'Riyal',
    639000000000.00, 7603.03, 2.00, 9.60, 47.90, 125.00, 300.00,
    76.70, 13.90, 8.70, 1.60, 1.50, 99.00, 25.80,
    86.90, 99.80, 94.00, 72.80, 66.70, 3.70, 13.40,
    8.40, 1.50, 6.60, 95.20, 40.00, 30.00,
    80.50, 159.10, 100.00, 217000, 8500, 92.40,
    139.00, 2.50, 1.50, 284.00, 45.70,
    40.80, 18.70, 10.60, 65, 40.20,
    51.30, 41.70, 65.20, 79.80, 34.50, 76.80, 45.70, 36.80,
    4.89, 1.95, 22.00, 0.58, 25.00,
    'Karisik (Kontinental/Kurak/Subtropikal)', 'UTC+3:30', 'Teokratik Cumhuriyet'),

-- 30. Misir
('Misir', 'EGY', 'Kuzey Afrika', 'Afrika', 2023, 102334404, 'Kahire', 'Arapca', 'Misir Paundu',
    441000000000.00, 4308.65, 3.60, 7.20, 29.50, 140.00, 220.00,
    72.00, 17.90, 4.70, 0.80, 1.60, 94.00, 32.00,
    71.20, 97.00, 82.60, 69.80, 36.40, 3.80, 24.10,
    2.50, 5.60, 0.10, 99.30, 40.00, 36.00,
    57.30, 95.30, 100.00, 65050, 5085, 95.60,
    173.20, 2.50, 1.80, 106.00, 54.70,
    31.50, 32.50, 10.10, 60, 39.70,
    51.30, 45.20, 58.70, 63.80, 30.40, 62.10, 54.70, 40.20,
    4.15, 2.93, 30.00, 0.57, 33.00,
    'Kurak', 'UTC+2', 'Yarı Baskanci Cumhuriyet');

    -- Dorduncu 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 31. Güney Afrika
('Guney Afrika', 'ZAF', 'Guney Afrika', 'Afrika', 2023, 59308690, 'Pretoria, Cape Town, Bloemfontein', 'Zuluca, Xhosa, Afrikaanca, Ingilizce', 'Rand',
    415000000000.00, 6994.21, 0.80, 32.90, 4.80, 260.00, 760.00,
    64.90, 28.00, 8.10, 0.90, 2.30, 76.00, 28.30,
    95.00, 98.80, 92.70, 68.00, 22.40, 6.20, 28.50,
    7.40, 6.50, 7.60, 93.00, 43.00, 47.00,
    68.20, 169.90, 84.40, 747014, 20986, 80.10,
    3039.70, 33.50, 2.50, 248.00, 31.30,
    63.00, 55.50, 12.80, 60, 45.20,
    45.70, 39.80, 52.30, 67.40, 34.20, 59.40, 31.30, 36.00,
    4.35, 7.05, 71.00, 0.76, 44.00,
    'Karisik (Iliman/Subtropikal/Kurak)', 'UTC+2', 'Parlamenter Cumhuriyet'),

-- 32. Pakistan
('Pakistan', 'PAK', 'Guney Asya', 'Asya', 2023, 220892340, 'Islamabad', 'Urduca, Ingilizce', 'Pakistan Rupisi',
    376500000000.00, 1704.44, 0.30, 6.40, 29.20, 125.00, 280.00,
    67.30, 55.70, 3.40, 1.10, 0.60, 75.00, 8.60,
    59.10, 85.10, 49.40, 26.30, 10.10, 2.90, 40.00,
    0.90, 11.00, 4.80, 91.50, 30.00, 33.00,
    25.00, 75.60, 79.20, 263775, 7791, 74.30,
    384.00, 3.88, 0.40, 57.00, 42.50,
    33.50, 24.30, 1.20, 60, 39.80,
    42.80, 36.20, 51.30, 48.60, 28.40, 47.50, 42.50, 31.40,
    4.52, 4.13, 37.00, 0.56, 27.00,
    'Karisik (Kurak/Kontinental/Tropikal)', 'UTC+5', 'Federal Parlamenter Cumhuriyet'),

-- 33. Vietnam
('Vietnam', 'VNM', 'Guneydogu Asya', 'Asya', 2023, 97338579, 'Hanoi', 'Vietnamca', 'Dong',
    366500000000.00, 3763.94, 6.00, 2.00, 3.40, 190.00, 320.00,
    75.80, 16.50, 5.70, 0.80, 2.60, 95.00, 2.10,
    95.40, 98.10, 92.80, 77.10, 28.60, 4.20, 21.00,
    2.20, 24.20, 41.90, 95.30, 40.00, 32.00,
    70.30, 141.20, 99.40, 195468, 2347, 88.20,
    46.70, 1.52, 0.40, 137.00, 60.20,
    35.70, 6.70, 6.30, 60, 50.80,
    62.10, 53.50, 65.60, 70.90, 52.30, 74.50, 60.20, 42.80,
    5.48, 3.08, 32.00, 0.70, 33.00,
    'Tropikal', 'UTC+7', 'Sosyalist Tek Parti Cumhuriyeti'),

-- 34. Bangladeş
('Banglades', 'BGD', 'Guney Asya', 'Asya', 2023, 164689383, 'Dakka', 'Bengalce', 'Taka',
    416300000000.00, 2503.10, 6.00, 4.10, 9.60, 95.00, 170.00,
    72.60, 25.60, 2.30, 0.60, 0.80, 98.00, 3.60,
    74.90, 90.50, 72.80, 60.00, 21.50, 1.30, 40.20,
    0.60, 1.30, 11.10, 97.60, 35.00, 25.00,
    31.90, 103.40, 92.20, 21269, 2855, 74.40,
    89.00, 2.16, 0.80, 42.00, 44.60,
    32.40, 24.30, 1.70, 60, 37.60,
    51.10, 47.30, 57.90, 59.80, 32.40, 50.80, 44.60, 33.80,
    5.16, 5.86, 49.00, 0.71, 25.00,
    'Tropikal', 'UTC+6', 'Parlamenter Cumhuriyet'),

-- 35. Kolombiya
('Kolombiya', 'COL', 'Guney Amerika', 'Amerika', 2023, 50882891, 'Bogota', 'Ispanyolca', 'Kolombiya Pesosu',
    337500000000.00, 6578.81, 1.30, 9.50, 10.10, 250.00, 600.00,
    77.30, 12.70, 7.60, 2.20, 1.70, 95.00, 22.30,
    95.60, 98.50, 93.40, 76.70, 55.30, 4.40, 23.40,
    1.60, 29.10, 52.70, 97.40, 55.00, 49.00,
    65.00, 132.10, 97.40, 206500, 3304, 86.10,
    243.90, 23.10, 3.40, 175.00, 48.70,
    54.20, 35.70, 14.10, 62, 52.60,
    58.80, 50.30, 68.30, 75.60, 64.70, 69.90, 48.70, 48.10,
    5.66, 7.23, 56.00, 0.75, 39.00,
    'Karisik (Tropikal/Iliman/Alpin)', 'UTC-5', 'Baskanci Cumhuriyet'),

-- 36. Filipinler
('Filipinler', 'PHL', 'Guneydogu Asya', 'Asya', 2023, 109581078, 'Manila', 'Filipince, Ingilizce', 'Filipin Pesosu',
    377100000000.00, 3430.03, 5.90, 4.50, 6.10, 167.00, 380.00,
    71.20, 21.00, 4.40, 0.60, 1.00, 73.00, 6.40,
    98.20, 95.70, 88.80, 71.10, 35.50, 3.20, 31.20,
    1.30, 26.30, 27.10, 93.60, 40.00, 41.00,
    43.00, 154.80, 95.60, 216387, 2000, 71.90,
    121.40, 6.46, 1.70, 174.00, 54.30,
    42.30, 16.70, 2.60, 65, 46.80,
    57.40, 48.50, 59.70, 71.30, 48.50, 60.40, 54.30, 38.80,
    5.90, 6.62, 45.00, 0.79, 33.00,
    'Tropikal', 'UTC+8', 'Baskanci Cumhuriyet'),

-- 37. Mısır
('Etiyopya', 'ETH', 'Dogu Afrika', 'Afrika', 2023, 114963588, 'Addis Ababa', 'Amharca', 'Birr',
    111200000000.00, 968.07, 6.10, 19.10, 33.80, 35.00, 110.00,
    66.60, 36.50, 3.30, 0.10, 0.30, 61.00, 4.50,
    51.80, 85.40, 31.10, 24.20, 8.10, 4.70, 53.40,
    0.10, 92.20, 12.60, 49.30, 25.00, 40.00,
    18.60, 37.20, 48.30, 110414, 659, 20.70,
    31.40, 6.80, 0.30, 128.00, 38.10,
    35.00, 23.50, 1.40, 60, 36.10,
    37.90, 32.30, 44.60, 41.70, 42.50, 22.80, 38.10, 26.30,
    4.24, 3.30, 34.00, 0.68, 38.00,
    'Tropikal Alpin', 'UTC+3', 'Federal Parlamenter Cumhuriyet'),

-- 38. Malezya
('Malezya', 'MYS', 'Guneydogu Asya', 'Asya', 2023, 32365999, 'Kuala Lumpur', 'Malayca', 'Ringgit',
    372900000000.00, 11521.83, 4.30, 3.60, 2.50, 310.00, 830.00,
    76.00, 7.10, 3.80, 1.90, 1.90, 96.00, 15.60,
    95.00, 98.80, 89.90, 73.40, 44.10, 4.50, 12.10,
    8.00, 12.60, 55.30, 99.60, 65.00, 49.00,
    84.20, 126.50, 100.00, 144403, 1655, 96.30,
    64.80, 2.09, 1.80, 135.00, 72.70,
    41.10, 5.60, 3.80, 60, 56.70,
    70.20, 66.80, 72.10, 76.60, 71.50, 80.60, 72.70, 51.40,
    5.38, 7.43, 55.00, 0.68, 48.00,
    'Tropikal', 'UTC+8', 'Federal Parlamenter Anayasal Monarsi'),

-- 39. Kenya
('Kenya', 'KEN', 'Dogu Afrika', 'Afrika', 2023, 53771296, 'Nairobi', 'Svahili, Ingilizce', 'Kenya Silingi',
    113000000000.00, 2100.49, 4.80, 5.20, 7.20, 140.00, 210.00,
    66.70, 29.80, 4.70, 0.20, 1.40, 81.00, 7.10,
    81.50, 99.60, 88.20, 58.10, 11.70, 5.30, 42.10,
    0.30, 73.10, 6.10, 59.00, 32.00, 59.00,
    85.20, 114.20, 75.00, 161452, 2778, 48.20,
    339.10, 5.80, 0.80, 118.00, 56.20,
    40.80, 36.10, 3.10, 60, 45.40,
    42.30, 36.80, 45.90, 59.30, 38.70, 42.50, 56.20, 27.50,
    4.54, 5.05, 59.00, 0.58, 31.00,
    'Tropikal', 'UTC+3', 'Baskanci Cumhuriyet'),

-- 40. Ukrayna
('Ukrayna', 'UKR', 'Dogu Avrupa', 'Avrupa', 2023, 43733762, 'Kiev', 'Ukraynaca', 'Grivna',
    160500000000.00, 3659.03, -0.20, 9.80, 26.60, 160.00, 450.00,
    72.00, 7.00, 7.70, 3.00, 8.70, 92.00, 24.10,
    99.80, 99.20, 98.50, 95.70, 82.70, 5.40, 16.00,
    5.10, 3.80, 16.70, 99.50, 58.00, 49.00,
    70.10, 132.60, 100.00, 169694, 19790, 94.80,
    61.30, 6.20, 3.00, 153.00, 65.60,
    26.60, 1.10, 23.10, 60, 45.80,
    62.20, 51.30, 67.80, 88.30, 52.30, 70.90, 65.60, 46.60,
    4.88, 5.71, 67.00, 0.72, 33.00,
    'Karisik (Kontinental/Subtropikal)', 'UTC+2/+3', 'Yarı Baskanci Cumhuriyet');

    -- Besinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 41. Cezayir
('Cezayir', 'DZA', 'Kuzey Afrika', 'Afrika', 2023, 43851044, 'Cezayir', 'Arapca, Berberice', 'Cezayir Dinari',
    169988000000.00, 3876.04, 2.10, 11.70, 9.30, 160.00, 340.00,
    76.90, 20.60, 6.20, 1.80, 1.90, 80.00, 27.40,
    81.40, 97.60, 92.50, 63.10, 51.40, 4.30, 22.70,
    3.70, 0.40, 0.80, 93.80, 45.00, 40.00,
    65.30, 106.00, 99.80, 113655, 4200, 76.20,
    78.20, 1.50, 1.70, 123.00, 54.60,
    27.60, 5.50, 8.80, 65, 44.20,
    55.70, 53.40, 65.30, 72.40, 36.20, 69.80, 54.60, 42.80,
    5.01, 3.77, 45.00, 0.63, 33.00,
    'Kurak/Akdeniz', 'UTC+1', 'Yarı Baskanci Cumhuriyet'),

-- 42. Peru
('Peru', 'PER', 'Guney Amerika', 'Amerika', 2023, 32971854, 'Lima', 'Ispanyolca', 'Sol',
    242600000000.00, 6127.26, 2.20, 6.60, 8.50, 265.00, 670.00,
    76.70, 11.00, 5.10, 1.30, 1.60, 83.00, 19.70,
    94.40, 94.90, 93.10, 78.40, 70.70, 3.80, 23.60,
    1.60, 30.90, 57.80, 91.10, 50.00, 52.00,
    65.30, 127.60, 95.20, 140672, 1854, 68.40,
    81.90, 7.40, 2.40, 262.00, 68.60,
    43.80, 20.20, 4.20, 65, 48.50,
    61.30, 55.60, 67.40, 78.20, 62.30, 64.30, 68.60, 41.10,
    5.76, 6.60, 70.00, 0.71, 38.00,
    'Karisik (Tropikal/Alpin/Kurak)', 'UTC-5', 'Baskanci Cumhuriyet'),

-- 43. Fas
('Fas', 'MAR', 'Kuzey Afrika', 'Afrika', 2023, 36910560, 'Rabat', 'Arapca, Berberice', 'Fas Dirhemi',
    132000000000.00, 3576.16, 2.90, 12.90, 8.00, 310.00, 520.00,
    76.70, 18.30, 5.30, 0.70, 1.10, 99.00, 26.10,
    73.80, 97.10, 80.30, 64.20, 38.10, 5.50, 25.60,
    1.80, 11.70, 12.70, 86.80, 50.00, 46.00,
    84.10, 133.90, 99.60, 57300, 2110, 87.40,
    69.20, 1.30, 1.40, 232.00, 63.80,
    39.50, 4.80, 6.30, 63, 41.50,
    60.70, 51.60, 68.30, 68.80, 42.80, 68.30, 63.80, 39.50,
    5.15, 5.04, 52.00, 0.61, 38.00,
    'Karisik (Akdeniz/Kurak)', 'UTC+0/+1', 'Parlamenter Anayasal Monarsi'),

-- 44. Şili
('Sili', 'CHL', 'Guney Amerika', 'Amerika', 2023, 19116201, 'Santiago', 'Ispanyolca', 'Sili Pesosu',
    317058000000.00, 16571.65, 2.40, 8.30, 7.60, 480.00, 1020.00,
    80.20, 6.40, 9.10, 2.60, 2.20, 93.00, 28.00,
    97.50, 95.30, 93.40, 82.50, 90.90, 5.40, 19.00,
    4.60, 28.70, 24.30, 99.70, 65.00, 68.00,
    82.30, 134.00, 100.00, 77764, 7282, 90.90,
    166.80, 3.60, 2.80, 247.00, 70.30,
    44.40, 8.60, 13.90, 65, 59.80,
    72.60, 69.70, 80.20, 83.50, 67.40, 79.60, 70.30, 62.10,
    6.17, 8.28, 76.00, 0.74, 67.00,
    'Karisik (Iliman/Akdeniz/Kurak/Alpin)', 'UTC-4/-6', 'Baskanci Cumhuriyet'),

-- 45. Romanya
('Romanya', 'ROU', 'Dogu Avrupa', 'Avrupa', 2023, 19237691, 'Bukres', 'Romence', 'Romen Leyi',
    286509000000.00, 14892.04, 2.00, 5.50, 10.10, 540.00, 1200.00,
    75.50, 5.70, 5.70, 3.10, 6.90, 86.00, 22.50,
    98.80, 86.80, 85.90, 82.50, 47.40, 3.10, 15.90,
    3.80, 23.90, 29.80, 100.00, 55.00, 62.00,
    73.70, 116.40, 100.00, 84185, 10788, 96.40,
    26.50, 1.50, 2.10, 106.00, 75.10,
    35.90, 23.80, 14.90, 65, 48.80,
    68.90, 65.40, 71.50, 75.20, 62.30, 74.30, 75.10, 58.10,
    6.48, 6.83, 70.00, 0.72, 45.00,
    'Iliman Kontinental', 'UTC+2/+3', 'Yarı Baskanci Cumhuriyet'),

-- 46. Avusturya
('Avusturya', 'AUT', 'Bati Avrupa', 'Avrupa', 2023, 9006398, 'Viyana', 'Almanca', 'Euro',
    481800000000.00, 53496.60, 1.80, 5.10, 7.40, 1750.00, 3900.00,
    81.60, 3.10, 10.40, 5.20, 7.30, 90.00, 20.10,
    99.00, 99.90, 99.80, 90.10, 83.50, 5.50, 10.80,
    7.10, 33.60, 46.90, 100.00, 85.00, 87.00,
    90.50, 121.30, 100.00, 107963, 5749, 99.90,
    20.10, 0.80, 3.30, 96.00, 82.20,
    29.70, 13.90, 20.90, 65, 73.80,
    85.70, 83.40, 85.90, 89.30, 83.20, 89.90, 82.20, 82.30,
    7.16, 8.16, 77.00, 0.79, 71.00,
    'Iliman Alpin', 'UTC+1/+2', 'Federal Parlamenter Cumhuriyet'),

-- 47. Macaristan
('Macaristan', 'HUN', 'Dogu Avrupa', 'Avrupa', 2023, 9660351, 'Budapeşte', 'Macarca', 'Forint',
    178800000000.00, 18506.47, 0.60, 4.00, 17.60, 490.00, 1100.00,
    76.70, 3.40, 6.40, 3.40, 7.00, 99.00, 26.40,
    99.10, 95.50, 92.70, 85.30, 48.50, 4.70, 10.70,
    4.90, 15.60, 22.90, 100.00, 60.00, 55.00,
    84.80, 106.10, 100.00, 203601, 7712, 97.50,
    185.40, 2.50, 3.90, 180.00, 68.30,
    30.60, 12.30, 14.30, 65, 56.90,
    67.50, 65.20, 72.40, 78.50, 58.80, 76.90, 68.30, 62.40,
    5.99, 6.90, 64.00, 0.67, 43.00,
    'Iliman Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 48. Belarus
('Belarus', 'BLR', 'Dogu Avrupa', 'Avrupa', 2023, 9449323, 'Minsk', 'Belarusca, Rusca', 'Belarus Rublesi',
    68220000000.00, 7224.80, 1.20, 4.10, 13.10, 180.00, 560.00,
    74.60, 2.40, 5.90, 4.10, 10.80, 97.00, 24.50,
    99.80, 99.10, 99.60, 96.80, 87.90, 4.80, 14.20,
    6.10, 6.80, 42.70, 99.40, 55.00, 48.00,
    85.10, 120.70, 100.00, 86600, 5480, 97.90,
    22.80, 2.40, 3.20, 345.00, 76.60,
    25.40, 5.00, 14.20, 61, 52.40,
    63.40, 59.70, 72.50, 91.10, 60.50, 79.30, 76.60, 47.10,
    5.82, 2.41, 36.00, 0.74, 47.00,
    'Iliman Kontinental', 'UTC+3', 'Baskanci Cumhuriyet'),

-- 49. Yunanistan
('Yunanistan', 'GRC', 'Guney Avrupa', 'Avrupa', 2023, 10423054, 'Atina', 'Yunanca', 'Euro',
    219069000000.00, 21018.89, 2.00, 11.20, 3.80, 774.00, 1180.00,
    82.10, 3.50, 7.80, 6.30, 4.20, 99.00, 24.90,
    97.90, 99.60, 96.80, 94.80, 134.30, 4.30, 9.60,
    5.80, 19.70, 31.50, 100.00, 75.00, 69.00,
    75.70, 114.90, 100.00, 116960, 2548, 99.70,
    83.50, 0.70, 4.90, 97.00, 75.20,
    34.40, 17.90, 19.30, 62, 63.50,
    74.90, 67.30, 82.50, 85.40, 72.40, 78.60, 75.20, 72.10,
    5.95, 7.39, 72.00, 0.71, 49.00,
    'Akdeniz', 'UTC+2/+3', 'Parlamenter Cumhuriyet'),

-- 50. Portekiz
('Portekiz', 'PRT', 'Guney Avrupa', 'Avrupa', 2023, 10196709, 'Lizbon', 'Portekizce', 'Euro',
    257400000000.00, 25241.84, 2.30, 6.50, 4.30, 835.00, 1350.00,
    82.10, 2.60, 9.10, 5.30, 3.40, 98.00, 20.80,
    96.10, 99.30, 99.10, 93.20, 68.50, 5.00, 10.70,
    4.60, 30.30, 38.70, 99.90, 79.00, 75.00,
    78.30, 116.10, 100.00, 82900, 3075, 99.80,
    35.60, 0.90, 4.50, 125.00, 77.90,
    33.50, 17.20, 16.90, 66, 69.20,
    79.60, 71.80, 84.30, 84.90, 77.90, 83.50, 77.90, 78.60,
    6.02, 7.82, 87.00, 0.74, 62.00,
    'Akdeniz', 'UTC+0/+1', 'Yarı Baskanci Cumhuriyet');

    -- Altinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 51. Çek Cumhuriyeti
('Cek Cumhuriyeti', 'CZE', 'Dogu Avrupa', 'Avrupa', 2023, 10708981, 'Prag', 'Cekce', 'Cek Korunasi',
    281800000000.00, 26312.73, 0.50, 2.70, 10.70, 700.00, 1460.00,
    79.30, 2.60, 7.80, 4.10, 6.60, 97.00, 26.00,
    99.00, 99.50, 99.20, 96.10, 64.20, 4.40, 13.70,
    9.40, 14.80, 34.50, 99.90, 75.00, 61.00,
    81.30, 126.40, 100.00, 130661, 9580, 99.80,
    15.90, 0.60, 3.80, 179.00, 80.30,
    25.30, 10.10, 12.30, 64, 65.60,
    80.20, 77.30, 81.40, 84.30, 68.40, 82.40, 80.30, 72.20,
    6.92, 7.74, 81.00, 0.69, 56.00,
    'Iliman Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 52. Danimarka
('Danimarka', 'DNK', 'Kuzey Avrupa', 'Avrupa', 2023, 5792202, 'Kopenhag', 'Danca', 'Danimarka Kronu',
    395400000000.00, 68246.48, 1.90, 4.80, 3.20, 3100.00, 5400.00,
    81.40, 3.20, 10.40, 4.20, 2.50, 97.00, 19.70,
    99.00, 99.90, 99.80, 92.10, 80.60, 7.60, 10.80,
    5.20, 35.80, 15.70, 100.00, 90.00, 91.00,
    96.60, 125.00, 100.00, 74558, 2667, 99.90,
    83.10, 1.01, 1.90, 63.00, 85.60,
    28.70, 12.50, 28.00, 67, 82.40,
    90.50, 87.30, 87.40, 92.20, 75.60, 91.50, 85.60, 90.20,
    7.59, 9.28, 90.00, 0.77, 88.00,
    'Iliman Denizel', 'UTC+1/+2', 'Parlamenter Anayasal Monarsi'),

-- 53. Finlandiya
('Finlandiya', 'FIN', 'Kuzey Avrupa', 'Avrupa', 2023, 5540720, 'Helsinki', 'Fince, Isvecce', 'Euro',
    289240000000.00, 52184.11, 1.60, 7.00, 4.10, 1780.00, 3900.00,
    81.90, 1.90, 9.10, 3.80, 3.30, 93.00, 22.20,
    100.00, 99.90, 99.80, 96.10, 88.20, 6.40, 8.60,
    7.70, 43.80, 73.70, 100.00, 88.00, 95.00,
    91.50, 129.10, 100.00, 78000, 5926, 99.90,
    48.90, 1.60, 1.50, 51.00, 89.10,
    27.40, 12.20, 23.70, 68, 81.30,
    90.70, 85.30, 87.70, 93.20, 92.90, 90.60, 89.10, 89.60,
    7.82, 9.29, 85.00, 0.86, 87.00,
    'Karisik (Kutupsal/Kontinental)', 'UTC+2/+3', 'Parlamenter Cumhuriyet'),

-- 54. İrlanda
('Irlanda', 'IRL', 'Kuzey Avrupa', 'Avrupa', 2023, 4937786, 'Dublin', 'Ingilizce, Irlandaca', 'Euro',
    516227000000.00, 104556.18, 6.10, 4.00, 5.00, 1850.00, 4200.00,
    82.30, 3.20, 7.40, 3.50, 2.90, 94.00, 25.30,
    99.00, 99.90, 99.70, 96.80, 77.60, 3.50, 13.60,
    7.10, 13.30, 11.40, 97.80, 80.00, 90.00,
    92.00, 102.70, 100.00, 99830, 2400, 99.80,
    61.30, 0.70, 3.40, 74.00, 78.70,
    32.80, 13.10, 15.20, 66, 70.10,
    83.50, 89.60, 84.20, 89.50, 65.40, 88.60, 78.70, 74.60,
    7.04, 9.00, 83.00, 0.80, 72.00,
    'Iliman Denizel', 'UTC+0/+1', 'Parlamenter Cumhuriyet'),

-- 55. Yeni Zelanda
('Yeni Zelanda', 'NZL', 'Okyanusya', 'Okyanusya', 2023, 4822233, 'Wellington', 'Ingilizce, Maori', 'Yeni Zelanda Dolari',
    243391000000.00, 50471.71, 3.00, 3.30, 6.00, 1880.00, 3840.00,
    82.30, 3.60, 9.70, 3.60, 2.60, 92.00, 30.80,
    99.00, 99.90, 99.70, 95.10, 82.00, 6.20, 12.80,
    6.90, 39.10, 38.60, 100.00, 85.00, 95.00,
    91.50, 136.80, 100.00, 94000, 4128, 99.80,
    246.80, 0.80, 2.10, 190.00, 75.30,
    33.90, 13.80, 18.30, 65, 79.60,
    85.40, 81.30, 86.10, 89.70, 85.10, 91.30, 75.30, 83.40,
    7.20, 9.27, 89.00, 0.82, 87.00,
    'Iliman Denizel', 'UTC+12/+13', 'Parlamenter Anayasal Monarsi'),

-- 56. Bulgaristan
('Bulgaristan', 'BGR', 'Dogu Avrupa', 'Avrupa', 2023, 6948445, 'Sofya', 'Bulgarca', 'Lev',
    86050000000.00, 12383.10, 1.50, 4.80, 12.30, 400.00, 750.00,
    75.00, 5.60, 8.10, 4.20, 7.40, 92.00, 25.00,
    98.40, 92.30, 92.10, 89.20, 71.30, 4.10, 15.60,
    5.40, 22.10, 35.40, 99.30, 60.00, 50.00,
    70.40, 111.40, 100.00, 19512, 4030, 97.70,
    134.10, 1.30, 2.70, 115.00, 72.10,
    40.30, 23.80, 11.80, 64, 45.60,
    65.80, 61.70, 70.30, 82.40, 64.90, 73.20, 72.10, 58.10,
    5.37, 6.54, 70.00, 0.70, 44.00,
    'Karisik (Kontinental/Akdeniz)', 'UTC+2/+3', 'Parlamenter Cumhuriyet'),

-- 57. Slovakya
('Slovakya', 'SVK', 'Dogu Avrupa', 'Avrupa', 2023, 5459642, 'Bratislava', 'Slovakca', 'Euro',
    115400000000.00, 21136.29, 1.30, 6.10, 9.80, 700.00, 1320.00,
    77.80, 4.50, 7.00, 3.60, 5.70, 97.00, 20.50,
    99.60, 97.60, 92.70, 88.20, 47.80, 4.20, 15.90,
    5.70, 11.90, 40.10, 100.00, 62.00, 63.00,
    85.00, 133.40, 100.00, 56926, 3623, 98.60,
    48.90, 1.40, 2.60, 195.00, 78.10,
    26.10, 16.40, 13.30, 62, 59.70,
    74.10, 69.50, 76.40, 82.90, 67.30, 80.60, 78.10, 66.20,
    6.39, 7.10, 77.00, 0.72, 49.00,
    'Iliman Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 58. Uruguay
('Uruguay', 'URY', 'Guney Amerika', 'Amerika', 2023, 3473730, 'Montevideo', 'Ispanyolca', 'Uruguay Pesosu',
    64963000000.00, 18701.22, 2.50, 8.00, 8.30, 480.00, 960.00,
    77.90, 6.10, 9.30, 5.10, 2.50, 95.00, 27.90,
    98.70, 99.50, 96.20, 78.70, 63.10, 4.90, 15.40,
    1.90, 63.50, 10.70, 99.40, 60.00, 78.00,
    83.00, 149.90, 100.00, 77732, 1673, 98.10,
    114.60, 8.50, 3.10, 375.00, 67.20,
    39.70, 9.40, 10.20, 65, 59.80,
    73.10, 69.30, 77.40, 83.60, 66.80, 78.30, 67.20, 64.80,
    6.43, 8.85, 79.00, 0.73, 69.00,
    'Iliman', 'UTC-3', 'Baskanci Cumhuriyet'),

-- 59. Angola
('Angola', 'AGO', 'Orta Afrika', 'Afrika', 2023, 32866272, 'Luanda', 'Portekizce', 'Kwanza',
    91271000000.00, 2777.01, 0.70, 30.10, 23.90, 150.00, 230.00,
    61.20, 50.90, 2.50, 0.21, 0.80, 65.00, 8.20,
    71.20, 89.10, 65.40, 12.50, 9.90, 2.50, 49.20,
    1.00, 62.30, 46.40, 56.00, 30.00, 43.00,
    14.30, 45.60, 46.90, 51429, 2761, 41.00,
    162.40, 4.80, 0.30, 43.00, 37.20,
    51.30, 32.30, 2.10, 60, 34.20,
    33.90, 30.60, 42.30, 48.60, 47.30, 24.30, 37.20, 26.70,
    3.80, 3.26, 41.00, 0.54, 29.00,
    'Tropikal', 'UTC+1', 'Baskanci Cumhuriyet'),

-- 60. Kamerun
('Kamerun', 'CMR', 'Orta Afrika', 'Afrika', 2023, 26545863, 'Yaounde', 'Ingilizce, Fransizca', 'CFA Frangi',
    45334000000.00, 1707.72, 3.80, 3.30, 6.00, 73.00, 180.00,
    59.30, 50.60, 3.10, 0.09, 1.30, 65.00, 11.40,
    77.10, 97.30, 68.40, 38.80, 16.40, 3.10, 48.60,
    0.30, 77.10, 39.80, 66.10, 35.00, 40.00,
    23.20, 87.40, 62.30, 77589, 977, 62.40,
    54.60, 1.40, 0.70, 105.00, 40.80,
    46.60, 37.50, 1.10, 60, 38.60,
    37.10, 33.90, 43.50, 56.60, 50.40, 39.40, 40.80, 29.10,
    5.04, 2.84, 34.00, 0.57, 27.00,
    'Tropikal', 'UTC+1', 'Baskanci Cumhuriyet');

-- Yedinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 61. Katar
('Katar', 'QAT', 'Orta Dogu', 'Asya', 2023, 2881053, 'Doha', 'Arapca', 'Katar Riyali',
    193000000000.00, 66981.44, 2.80, 0.10, 2.80, NULL, 3500.00,
    80.20, 6.10, 2.50, 2.80, 1.20, 98.00, 35.10,
    96.90, 98.40, 91.40, 88.30, 19.70, 3.20, 10.40,
    31.30, 0.10, 0.00, 100.00, 76.00, 62.00,
    99.70, 146.10, 100.00, 9830, 41, 99.90,
    43.30, 0.40, 1.50, 53.00, 88.30,
    41.10, 0.20, NULL, 60, 69.30,
    83.60, 87.50, 79.10, 78.60, 39.80, 88.10, 88.30, 77.60,
    6.10, 3.65, 41.00, 0.62, 58.00,
    'Kurak', 'UTC+3', 'Mutlak Monarsi'),

-- 62. Dominik Cumhuriyeti
('Dominik Cumhuriyeti', 'DOM', 'Karayipler', 'Amerika', 2023, 10847910, 'Santo Domingo', 'Ispanyolca', 'Dominik Pesosu',
    94243000000.00, 8689.84, 4.90, 6.50, 3.80, 288.00, 520.00,
    74.10, 24.10, 6.10, 2.40, 1.60, 85.00, 27.60,
    93.90, 93.40, 93.30, 70.20, 59.90, 4.70, 20.40,
    2.30, 16.70, 44.40, 96.70, 45.00, 67.00,
    76.90, 84.10, 98.30, 19705, 142, 84.20,
    112.30, 10.30, 3.50, 194.00, 57.10,
    41.90, 21.00, 2.70, 60, 48.10,
    58.40, 56.20, 63.10, 73.40, 66.90, 60.60, 57.10, 40.60,
    5.69, 6.45, 33.00, 0.73, 30.00,
    'Tropikal', 'UTC-4', 'Baskanci Cumhuriyet'),

-- 63. Kuveyt
('Kuveyt', 'KWT', 'Orta Dogu', 'Asya', 2023, 4270571, 'Kuveyt', 'Arapca', 'Kuveyt Dinari',
    126930000000.00, 29722.15, 0.60, 2.20, 3.20, NULL, 2100.00,
    75.50, 6.90, 5.00, 2.60, 2.00, 99.00, 37.90,
    96.50, 94.50, 94.10, 81.60, 53.20, 3.80, 12.10,
    22.00, 0.00, 0.40, 100.00, 71.00, 57.00,
    99.60, 173.80, 100.00, 6608, 0, 99.80,
    36.50, 1.80, 1.10, 130.00, 75.30,
    NULL, 0.00, NULL, 65, 55.40,
    72.70, 76.80, 74.60, 78.50, 33.80, 84.60, 75.30, 65.30,
    6.11, 3.91, 49.00, 0.62, 40.00,
    'Kurak', 'UTC+3', 'Anayasal Monarsi'),

-- 64. Senegal
('Senegal', 'SEN', 'Bati Afrika', 'Afrika', 2023, 16743927, 'Dakar', 'Fransizca', 'CFA Frangi',
    27693000000.00, 1652.65, 4.70, 24.10, 5.90, 141.00, 350.00,
    67.90, 31.80, 5.50, 0.07, 0.30, 81.00, 8.80,
    51.90, 74.10, 45.00, 28.00, 13.10, 5.60, 36.40,
    0.60, 47.10, 42.80, 80.70, 38.00, 45.00,
    46.00, 110.50, 70.40, 16496, 906, 66.00,
    73.30, 5.10, 0.50, 62.00, 52.40,
    40.30, 46.70, 1.50, 60, 44.80,
    44.60, 37.20, 54.40, 41.70, 51.30, 38.80, 52.40, 32.40,
    5.05, 5.86, 65.00, 0.59, 43.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 65. Tunus
('Tunus', 'TUN', 'Kuzey Afrika', 'Afrika', 2023, 11818619, 'Tunus', 'Arapca', 'Tunus Dinari',
    38797000000.00, 3282.71, 0.40, 15.70, 9.30, 153.00, 320.00,
    76.70, 15.30, 7.00, 1.30, 2.20, 97.00, 26.90,
    79.00, 99.00, 93.00, 73.30, 32.40, 6.60, 23.50,
    2.60, 6.30, 6.70, 96.60, 50.00, 55.00,
    66.70, 127.70, 100.00, 19418, 2167, 86.40,
    120.20, 3.00, 2.80, 197.00, 59.40,
    32.80, 15.20, 7.50, 62, 46.30,
    59.30, 49.40, 66.30, 70.20, 38.20, 68.50, 59.40, 49.80,
    4.52, 5.99, 55.00, 0.63, 43.00,
    'Karisik (Akdeniz/Kurak)', 'UTC+1', 'Yarı Baskanci Cumhuriyet'),

-- 66. Umman
('Umman', 'OMN', 'Orta Dogu', 'Asya', 2023, 5106626, 'Maskat', 'Arapca', 'Umman Riyali',
    88192000000.00, 17270.17, 1.80, 2.50, 1.40, NULL, 1200.00,
    77.90, 9.90, 4.00, 2.00, 1.60, 99.00, 27.00,
    95.70, 97.70, 98.20, 92.80, 38.00, 5.40, 15.30,
    15.30, 0.10, 0.00, 91.90, 68.00, 62.00,
    95.20, 132.90, 100.00, 60240, 0, 99.20,
    30.50, 0.40, 1.80, 61.00, 79.60,
    NULL, 5.60, NULL, 60, 59.10,
    70.80, 71.50, 76.10, 78.30, 36.60, 82.90, 79.60, 57.40,
    6.85, 3.00, 51.00, 0.60, 44.00,
    'Kurak', 'UTC+4', 'Mutlak Monarsi'),

-- 67. Kosta Rika
('Kosta Rika', 'CRI', 'Orta Amerika', 'Amerika', 2023, 5094118, 'San Jose', 'Ispanyolca', 'Kostarika Colonu',
    64280000000.00, 12612.29, 4.30, 11.50, 7.50, 530.00, 870.00,
    80.30, 7.60, 7.30, 2.90, 1.20, 96.00, 25.70,
    97.90, 96.30, 95.10, 80.30, 55.60, 7.40, 13.90,
    1.70, 99.20, 54.60, 99.70, 65.00, 75.00,
    81.20, 169.90, 99.90, 39018, 278, 95.20,
    122.50, 11.20, 2.70, 374.00, 64.20,
    48.70, 21.00, 12.30, 65, 55.80,
    71.30, 65.70, 78.10, 82.50, 82.50, 73.30, 64.20, 65.70,
    7.07, 8.81, 77.00, 0.81, 54.00,
    'Tropikal', 'UTC-6', 'Baskanci Cumhuriyet'),

-- 68. Hırvatistan
('Hirvatistan', 'HRV', 'Dogu Avrupa', 'Avrupa', 2023, 4105267, 'Zagreb', 'Hirvatca', 'Euro',
    68955000000.00, 16797.10, 2.80, 7.00, 8.90, 620.00, 1200.00,
    78.40, 4.20, 6.80, 3.50, 5.60, 94.00, 24.40,
    99.30, 95.80, 92.70, 90.90, 68.50, 3.90, 13.10,
    4.10, 33.90, 34.40, 99.60, 65.00, 70.00,
    78.30, 105.30, 100.00, 26958, 2617, 99.20,
    58.40, 0.60, 4.90, 78.00, 75.30,
    29.70, 18.30, 15.40, 65, 56.30,
    74.10, 68.30, 77.20, 82.30, 71.50, 80.10, 75.30, 71.30,
    5.50, 6.61, 63.00, 0.72, 50.00,
    'Karisik (Akdeniz/Kontinental)', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 69. Lübnan
('Lubnan', 'LBN', 'Orta Dogu', 'Asya', 2023, 6825445, 'Beyrut', 'Arapca', 'Lubnan Paundu',
    23132000000.00, 3388.60, -7.00, 14.40, 269.70, 85.00, 240.00,
    78.90, 6.40, 8.20, 2.10, 2.90, 63.00, 31.30,
    95.10, 93.30, 75.60, 53.40, 38.40, 2.40, 17.30,
    3.90, 7.80, 13.40, 47.70, 45.00, 45.00,
    78.20, 62.80, 100.00, 6970, 401, 92.10,
    102.30, 2.50, 3.10, 131.00, 50.20,
    31.80, 27.40, 2.20, 64, 39.10,
    41.80, 31.50, 66.80, 71.10, 35.60, 49.30, 50.20, 31.10,
    2.96, 4.63, 63.00, 0.53, 24.00,
    'Akdeniz', 'UTC+2/+3', 'Parlamenter Cumhuriyet'),

-- 70. Somali
('Somali', 'SOM', 'Dogu Afrika', 'Afrika', 2023, 15893222, 'Mogadisu', 'Somalice, Arapca', 'Somali Silingi',
    7628000000.00, 479.95, 3.20, 19.70, 6.10, 55.00, 110.00,
    57.40, 72.70, 1.10, 0.02, 0.90, 37.00, 3.90,
    37.80, 33.90, 16.00, 10.60, 3.10, 1.50, 51.00,
    0.00, 96.00, 9.50, 52.40, 15.00, 38.00,
    2.00, 50.90, 35.30, 22100, 0, 29.20,
    231.70, 13.90, 0.10, NULL, 25.40,
    36.80, 73.00, 0.90, 60, 30.60,
    25.30, 21.40, 30.60, 19.90, 39.80, 12.60, 25.40, 18.70,
    4.20, 1.97, 55.00, 0.43, 12.00,
    'Kurak/Yari Kurak', 'UTC+3', 'Federal Parlamenter Cumhuriyet');

-- Sekizinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 71. Yeni Gine
('Papua Yeni Gine', 'PNG', 'Melanezya', 'Okyanusya', 2023, 8947024, 'Port Moresby', 'Ingilizce, Tok Pisin, Hiri Motu', 'Kina',
    26590000000.00, 2971.81, 3.50, 2.50, 6.00, 160.00, 250.00,
    64.50, 38.00, 2.40, 0.07, 0.40, 61.00, 21.30,
    64.20, 74.40, 55.60, 31.90, 2.10, 1.90, 39.20,
    0.80, 62.10, 74.10, 41.30, 30.00, 70.00,
    15.20, 65.40, 59.00, 30000, 0, 18.20,
    81.30, 10.00, 1.00, 81.00, 29.60,
    41.90, 39.90, 1.50, 65, 36.40,
    36.80, 34.60, 41.60, 46.10, 66.50, 19.80, 29.60, 31.90,
    4.48, 6.29, 54.00, 0.71, 31.00,
    'Tropikal', 'UTC+10', 'Parlamenter Anayasal Monarsi'),

-- 72. Uganda
('Uganda', 'UGA', 'Dogu Afrika', 'Afrika', 2023, 45741007, 'Kampala', 'Ingilizce, Svahili', 'Uganda Silingi',
    40524000000.00, 822.05, 5.60, 2.80, 7.10, 35.00, 130.00,
    63.40, 32.60, 4.30, 0.17, 0.50, 85.00, 5.30,
    76.50, 97.00, 25.10, 24.50, 4.80, 2.20, 43.00,
    0.13, 88.90, 9.70, 49.10, 30.00, 42.00,
    23.70, 57.30, 41.30, 20000, 1244, 28.60,
    667.00, 11.52, 0.60, 120.00, 45.70,
    42.80, 41.70, 2.30, 55, 40.20,
    35.60, 30.20, 40.70, 45.30, 39.40, 23.50, 45.70, 28.70,
    4.43, 4.48, 51.00, 0.52, 27.00,
    'Tropikal', 'UTC+3', 'Baskanci Cumhuriyet'),

-- 73. Nepal
('Nepal', 'NPL', 'Guney Asya', 'Asya', 2023, 29136808, 'Katmandu', 'Nepalce', 'Nepal Rupisi',
    36288000000.00, 1245.42, 4.10, 11.40, 7.90, 115.00, 230.00,
    70.80, 25.10, 5.80, 0.90, 0.30, 96.00, 4.10,
    67.90, 96.30, 92.60, 66.70, 14.90, 5.10, 29.10,
    0.50, 88.30, 25.40, 89.60, 42.00, 41.00,
    34.00, 123.40, 88.50, 13223, 59, 64.30,
    32.90, 2.30, 2.40, 70.00, 58.10,
    32.80, 25.20, 1.00, 58, 42.70,
    48.30, 38.60, 56.30, 59.80, 51.90, 49.20, 58.10, 35.60,
    5.38, 5.18, 62.00, 0.45, 33.00,
    'Karisik (Tropikal/Subtropikal/Alpin)', 'UTC+5:45', 'Federal Parlamenter Cumhuriyet'),

-- 74. Gana
('Gana', 'GHA', 'Bati Afrika', 'Afrika', 2023, 31072940, 'Akra', 'Ingilizce', 'Gana Cedisi',
    72354000000.00, 2328.53, 3.00, 4.50, 23.60, 55.00, 160.00,
    64.10, 33.90, 3.50, 0.20, 0.90, 92.00, 10.90,
    79.00, 86.50, 73.20, 56.80, 15.70, 4.50, 39.30,
    0.50, 42.50, 35.10, 81.50, 40.00, 43.00,
    58.00, 141.20, 84.30, 71416, 947, 41.60,
    142.10, 2.10, 0.80, 35.00, 56.20,
    43.50, 23.40, 2.20, 60, 45.20,
    46.50, 41.80, 53.50, 61.10, 52.30, 50.40, 56.20, 36.20,
    5.17, 6.46, 67.00, 0.67, 43.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 75. Tanzanya
('Tanzanya', 'TZA', 'Dogu Afrika', 'Afrika', 2023, 59734218, 'Dodoma', 'Svahili, Ingilizce', 'Tanzanya Silingi',
    65912000000.00, 1122.43, 4.60, 9.60, 4.40, 60.00, 150.00,
    65.50, 37.60, 4.10, 0.03, 0.70, 84.00, 8.40,
    77.90, 85.30, 33.40, 25.10, 4.10, 3.60, 41.50,
    0.20, 86.90, 48.10, 60.60, 32.00, 45.00,
    20.00, 82.20, 37.70, 86472, 3676, 35.70,
    99.10, 7.30, 0.30, 34.00, 39.50,
    40.50, 49.10, 1.60, 60, 37.20,
    39.60, 33.90, 47.40, 50.00, 56.30, 31.30, 39.50, 30.50,
    3.70, 5.10, 57.00, 0.69, 38.00,
    'Tropikal', 'UTC+3', 'Baskanci Cumhuriyet'),

-- 76. Afganistan
('Afganistan', 'AFG', 'Guney Asya', 'Asya', 2023, 38928346, 'Kabil', 'Dari, Pastuca', 'Afgani',
    20140000000.00, 517.25, -3.00, 22.50, 9.80, NULL, 120.00,
    64.80, 46.50, 9.40, 0.30, 0.50, 66.00, 5.50,
    43.00, 65.40, 49.80, 33.50, 9.70, 4.10, 47.30,
    0.30, 13.10, 2.10, 67.10, 20.00, 27.00,
    18.00, 59.30, 89.50, 42150, 0, 39.40,
    204.30, 6.70, 0.10, NULL, 42.30,
    29.40, 54.50, 3.90, 60, 29.80,
    32.10, 27.40, 39.60, 36.50, 18.40, 35.70, 42.30, 25.10,
    2.40, 0.32, 13.00, 0.39, 16.00,
    'Karisik (Kurak/Kontinental/Alpin)', 'UTC+4:30', 'Teokratik Emirlik'),

-- 77. Mozambik
('Mozambik', 'MOZ', 'Dogu Afrika', 'Afrika', 2023, 31255435, 'Maputo', 'Portekizce', 'Metical',
    15775000000.00, 504.72, 4.20, 3.30, 7.00, 120.00, 180.00,
    60.20, 53.30, 3.80, 0.07, 0.70, 78.00, 7.20,
    60.70, 88.50, 26.10, 19.00, 7.30, 5.50, 32.60,
    0.30, 55.70, 48.00, 55.70, 32.00, 50.00,
    16.50, 50.30, 29.60, 30400, 4787, 33.80,
    158.00, 3.40, 0.50, 80.00, 42.50,
    54.00, 46.10, 2.10, 60, 28.30,
    32.80, 29.30, 35.20, 42.30, 45.20, 21.40, 42.50, 25.60,
    5.05, 3.51, 49.00, 0.39, 26.00,
    'Tropikal', 'UTC+2', 'Baskanci Cumhuriyet'),

-- 78. Mali
('Mali', 'MLI', 'Bati Afrika', 'Afrika', 2023, 20250833, 'Bamako', 'Fransizca', 'CFA Frangi',
    17827000000.00, 879.82, 4.70, 7.50, 2.90, 67.00, 140.00,
    59.30, 62.30, 3.80, 0.13, 0.10, 62.00, 8.60,
    35.50, 61.30, 41.30, 25.60, 4.40, 3.80, 38.00,
    0.28, 39.80, 3.80, 78.30, 22.00, 41.00,
    13.00, 115.10, 48.00, 18700, 593, 26.90,
    122.00, 10.20, 0.40, 30.00, 35.60,
    33.00, 42.10, 2.20, 58, 35.20,
    30.40, 26.30, 35.60, 33.70, 24.50, 19.40, 35.60, 26.30,
    4.48, 2.18, 32.00, 0.59, 28.00,
    'Karisik (Kurak/Yari Kurak)', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 79. Burkina Faso
('Burkina Faso', 'BFA', 'Bati Afrika', 'Afrika', 2023, 20903273, 'Ouagadougou', 'Fransizca', 'CFA Frangi',
    17930000000.00, 847.18, 4.80, 5.30, 2.30, 73.00, 150.00,
    61.60, 51.40, 5.60, 0.09, 0.40, 88.00, 5.60,
    41.20, 76.40, 36.70, 17.10, 6.40, 5.40, 41.00,
    0.20, 31.40, 19.30, 47.90, 25.00, 45.00,
    19.00, 97.90, 22.50, 15300, 622, 32.40,
    115.00, 1.30, 0.30, 41.00, 38.20,
    35.30, 40.10, 2.40, 55, 36.50,
    31.20, 25.80, 38.60, 38.20, 30.30, 18.50, 38.20, 27.90,
    4.34, 3.73, 41.00, 0.61, 42.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 80. Zambia
('Zambiya', 'ZMB', 'Dogu Afrika', 'Afrika', 2023, 18383955, 'Lusaka', 'Ingilizce', 'Zambiya Kwachasi',
    25547000000.00, 1389.08, 3.70, 12.70, 9.80, 80.00, 210.00,
    63.90, 39.50, 4.40, 0.70, 2.00, 90.00, 8.10,
    86.70, 87.10, 48.60, 30.20, 4.10, 4.50, 36.40,
    0.30, 99.90, 65.20, 60.40, 32.00, 41.00,
    14.30, 103.00, 39.80, 40454, 1273, 36.70,
    69.30, 5.10, 0.90, 112.00, 40.10,
    57.10, 54.40, 2.50, 55, 40.30,
    32.90, 29.40, 41.30, 48.40, 59.70, 24.90, 40.10, 26.10,
    3.76, 5.72, 55.00, 0.68, 33.00,
    'Tropikal', 'UTC+2', 'Baskanci Cumhuriyet');

-- Dokuzuncu 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 81. Azerbaycan
('Azerbaycan', 'AZE', 'Bati Asya', 'Asya', 2023, 10139177, 'Baku', 'Azerice', 'Azerbaycan Manati',
    54622000000.00, 5384.06, 1.10, 5.50, 13.90, 167.00, 380.00,
    73.00, 19.20, 3.50, 3.40, 4.70, 94.00, 19.90,
    99.80, 93.10, 85.30, 89.30, 27.70, 2.50, 15.20,
    3.70, 2.30, 13.20, 91.40, 45.00, 40.00,
    81.10, 104.60, 100.00, 52942, 2079, 91.80,
    25.70, 2.10, 1.20, 235.00, 67.70,
    26.60, 6.00, 3.60, 65, 47.20,
    58.90, 54.80, 64.30, 75.40, 35.20, 71.70, 67.70, 46.30,
    5.17, 2.78, 23.00, 0.68, 23.00,
    'Karisik (Kurak/Subtropikal/Kontinental)', 'UTC+4', 'Yarı Baskanci Cumhuriyet'),

-- 82. Bolivya
('Bolivya', 'BOL', 'Guney Amerika', 'Amerika', 2023, 11673021, 'La Paz, Sucre', 'Ispanyolca', 'Boliviano',
    40895000000.00, 3504.40, 3.10, 8.50, 1.80, 346.00, 570.00,
    71.50, 21.80, 6.50, 1.90, 1.10, 83.00, 20.20,
    92.50, 93.60, 86.40, 76.80, 38.40, 7.30, 19.50,
    1.90, 81.50, 50.30, 92.80, 40.00, 42.00,
    44.30, 100.80, 93.60, 90568, 3504, 62.10,
    89.60, 6.30, 2.80, 160.00, 44.30,
    44.00, 37.20, 14.10, 55, 41.50,
    49.60, 44.30, 59.60, 72.50, 58.90, 54.20, 44.30, 38.60,
    5.60, 5.85, 38.00, 0.72, 30.00,
    'Karisik (Tropikal/Subtropikal/Alpin)', 'UTC-4', 'Baskanci Cumhuriyet'),

-- 83. Panama
('Panama', 'PAN', 'Orta Amerika', 'Amerika', 2023, 4314767, 'Panama City', 'Ispanyolca', 'Balboa',
    66801000000.00, 15482.52, 7.50, 9.70, 2.90, 744.00, 1050.00,
    78.80, 13.10, 7.30, 1.60, 2.30, 87.00, 22.70,
    95.70, 95.90, 84.50, 63.40, 47.80, 3.20, 16.90,
    2.60, 22.50, 56.50, 95.70, 55.00, 71.00,
    63.60, 130.90, 93.40, 15137, 76, 83.90,
    93.40, 9.40, 2.60, 423.00, 60.40,
    49.80, 22.10, 9.20, 62, 52.30,
    61.70, 62.30, 70.90, 74.30, 67.40, 65.20, 60.40, 48.90,
    6.18, 7.05, 66.00, 0.72, 36.00,
    'Tropikal', 'UTC-5', 'Baskanci Cumhuriyet'),

-- 84. Sırbistan
('Sirbistan', 'SRB', 'Dogu Avrupa', 'Avrupa', 2023, 6908224, 'Belgrad', 'Sirpca', 'Sırp Dinarı',
    63082000000.00, 9132.78, 2.50, 9.40, 11.30, 390.00, 730.00,
    76.00, 4.90, 8.10, 3.10, 5.70, 95.00, 21.50,
    98.80, 97.40, 96.50, 91.70, 67.20, 3.70, 13.80,
    6.30, 21.40, 31.10, 99.50, 50.00, 53.00,
    77.40, 122.10, 100.00, 44770, 3739, 96.50,
    65.70, 1.10, 4.40, 144.00, 71.30,
    36.20, 24.30, 21.40, 65, 49.40,
    64.70, 57.40, 72.30, 83.60, 60.70, 74.40, 71.30, 58.90,
    6.08, 6.36, 67.00, 0.76, 36.00,
    'Iliman Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 85. Hong Kong
('Hong Kong', 'HKG', 'Dogu Asya', 'Asya', 2023, 7496981, 'Hong Kong', 'Cince, Ingilizce', 'Hong Kong Dolari',
    369170000000.00, 49249.53, 3.50, 3.60, 1.90, NULL, 2500.00,
    85.30, 1.30, 6.20, 2.00, 5.40, 95.00, 4.50,
    99.00, 99.80, 99.50, 97.00, 74.40, 3.30, 14.00,
    4.50, 0.90, 7.40, 100.00, 80.00, 39.00,
    91.70, 322.90, 100.00, 2107, 210, 99.80,
    40.20, 0.30, 4.50, 117.00, 86.40,
    53.90, 19.90, 2.70, 65, 47.20,
    80.90, 87.60, 84.20, 85.90, 45.30, 88.10, 86.40, 55.20,
    5.43, NULL, 48.00, NULL, 76.00,
    'Subtropikal', 'UTC+8', 'Ozel Idari Bolge'),

-- 86. Ürdün
('Urdun', 'JOR', 'Orta Dogu', 'Asya', 2023, 10203134, 'Amman', 'Arapca', 'Urdun Dinari',
    45744000000.00, 4484.12, 2.50, 22.60, 2.50, 310.00, 640.00,
    74.50, 14.20, 7.80, 2.30, 1.40, 98.00, 35.50,
    98.20, 98.60, 95.00, 62.10, 32.10, 3.60, 16.20,
    2.50, 14.20, 1.10, 98.90, 60.00, 57.00,
    66.80, 88.80, 99.90, 7203, 499, 96.30,
    75.80, 1.40, 1.20, 152.00, 68.10,
    33.70, 15.70, 8.90, 60, 49.80,
    61.70, 51.30, 70.10, 75.20, 37.40, 72.20, 68.10, 50.30,
    4.39, 3.62, 42.00, 0.62, 47.00,
    'Kurak', 'UTC+2/+3', 'Anayasal Monarsi'),

-- 87. Ekvador
('Ekvador', 'ECU', 'Guney Amerika', 'Amerika', 2023, 17643054, 'Quito', 'Ispanyolca', 'Amerikan Dolari',
    115049000000.00, 6521.56, 2.70, 3.50, 3.00, 450.00, 630.00,
    77.00, 12.20, 8.30, 2.20, 1.50, 85.00, 19.90,
    94.40, 98.10, 93.80, 87.90, 45.50, 5.00, 17.80,
    2.40, 14.40, 50.20, 94.00, 55.00, 64.00,
    61.80, 89.50, 98.70, 43670, 965, 88.10,
    62.40, 6.70, 2.60, 314.00, 53.20,
    45.40, 25.00, 8.10, 65, 49.30,
    56.90, 52.70, 69.30, 76.60, 64.60, 63.50, 53.20, 46.60,
    5.53, 6.25, 61.00, 0.75, 36.00,
    'Karisik (Tropikal/Andean/Kurak)', 'UTC-5', 'Baskanci Cumhuriyet'),

-- 88. Libya
('Libya', 'LBY', 'Kuzey Afrika', 'Afrika', 2023, 6871292, 'Trablus', 'Arapca', 'Libya Dinari',
    42870000000.00, 6220.00, 17.90, 19.00, 2.80, NULL, 750.00,
    72.90, 10.20, 6.10, 2.10, 3.70, 97.00, 32.50,
    91.40, 97.00, 69.40, 48.90, 16.10, 2.00, 19.60,
    7.80, 1.20, 0.10, 98.50, 35.00, 52.00,
    22.00, 91.50, 98.50, 100024, 992, 96.80,
    53.10, 2.50, 2.70, 81.00, 54.60,
    NULL, 23.60, NULL, 65, 45.20,
    47.80, 45.70, 63.40, 59.40, 26.40, 61.70, 54.60, 38.10,
    5.33, 1.43, 32.00, 0.63, 17.00,
    'Kurak', 'UTC+2', 'Gecici Hukumet'),

-- 89. Myanmar
('Myanmar', 'MMR', 'Guneydogu Asya', 'Asya', 2023, 54409800, 'Naypyidaw', 'Birmanca', 'Kyat',
    76085000000.00, 1400.22, 3.00, 1.00, 8.00, 95.00, 180.00,
    67.10, 36.20, 4.70, 0.70, 1.00, 91.00, 5.80,
    75.60, 98.00, 64.10, 38.80, 18.80, 1.90, 36.30,
    0.40, 68.50, 42.30, 81.80, 30.00, 27.00,
    43.30, 113.80, 68.40, 151298, 6207, 55.60,
    44.00, 2.30, 1.60, 122.00, 53.40,
    30.70, 24.80, 0.80, 60, 38.80,
    43.60, 39.60, 51.80, 57.20, 47.30, 45.10, 53.40, 30.90,
    4.39, 1.82, 17.00, 0.65, 28.00,
    'Tropikal', 'UTC+6:30', 'Askeri Cunta'),

-- 90. Sudan
('Sudan', 'SDN', 'Kuzey Afrika', 'Afrika', 2023, 43849260, 'Hartum', 'Arapca, Ingilizce', 'Sudan Paundu',
    34326000000.00, 782.81, 0.50, 17.70, 81.60, 30.00, 120.00,
    65.30, 41.30, 5.20, 0.40, 0.70, 93.00, 6.60,
    60.70, 76.80, 47.70, 30.50, 17.70, 2.20, 43.10,
    0.50, 61.50, 0.80, 60.30, 25.00, 30.00,
    30.90, 77.20, 54.10, 11900, 5478, 52.10,
    154.40, 9.70, 1.60, 52.00, 44.20,
    34.20, 12.70, 3.00, 65, 34.60,
    33.80, 27.50, 45.70, 41.70, 24.30, 31.40, 44.20, 28.30,
    4.28, 2.47, 32.00, 0.53, 16.00,
    'Kurak', 'UTC+2', 'Askeri Gecis Rejimi');

-- Onuncu 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 91. Sri Lanka
('Sri Lanka', 'LKA', 'Guney Asya', 'Asya', 2023, 21413249, 'Sri Jayawardenepura Kotte', 'Sinhala, Tamil', 'Sri Lanka Rupisi',
    88927000000.00, 4151.96, 3.00, 4.30, 25.50, 85.00, 220.00,
    77.00, 6.40, 3.80, 1.00, 4.20, 99.00, 5.20,
    91.70, 99.10, 97.50, 83.10, 19.60, 2.10, 24.20,
    0.90, 43.10, 33.60, 89.90, 45.00, 37.00,
    35.10, 123.80, 100.00, 114093, 1562, 90.30,
    43.70, 2.30, 4.20, 88.00, 60.10,
    39.80, 4.10, 1.80, 55, 48.70,
    57.60, 50.70, 69.40, 73.30, 56.30, 64.70, 60.10, 41.80,
    4.36, 6.13, 53.00, 0.75, 36.00,
    'Tropikal', 'UTC+5:30', 'Baskanci Cumhuriyet'),

-- 92. Singapur
('Singapur', 'SGP', 'Guneydogu Asya', 'Asya', 2023, 5850342, 'Singapur', 'Ingilizce, Malayca, Mandarin, Tamil', 'Singapur Dolari',
    372063000000.00, 63587.87, 3.60, 2.10, 5.50, NULL, 4400.00,
    83.90, 1.70, 4.90, 2.50, 2.40, 95.00, 6.10,
    97.30, 99.90, 99.90, 99.60, 92.00, 2.90, 10.50,
    7.80, 0.80, 29.80, 100.00, 95.00, 42.00,
    88.90, 145.70, 100.00, 3500, 199, 100.00,
    32.40, 0.20, 3.30, 188.00, 90.50,
    45.90, 0.00, 4.20, 62, 70.80,
    90.20, 92.30, 87.10, 93.40, 61.20, 94.90, 90.50, 86.20,
    6.38, 6.23, 47.00, 0.70, 83.00,
    'Tropikal', 'UTC+8', 'Parlamenter Cumhuriyet'),

-- 93. Fildişi Sahili
('Fildisi Sahili', 'CIV', 'Bati Afrika', 'Afrika', 2023, 26378274, 'Yamoussoukro', 'Fransizca', 'CFA Frangi',
    70990000000.00, 2691.22, 6.40, 3.50, 3.20, 90.00, 250.00,
    57.80, 58.70, 4.20, 0.23, 0.40, 69.00, 10.30,
    47.20, 99.80, 58.90, 34.10, 9.40, 3.90, 45.20,
    0.40, 42.90, 32.70, 73.10, 30.00, 37.00,
    36.50, 146.40, 69.00, 81996, 639, 32.10,
    57.90, 4.00, 0.70, 42.00, 41.20,
    41.50, 39.50, 2.30, 60, 42.30,
    40.30, 38.90, 44.10, 52.10, 46.30, 37.40, 41.20, 31.60,
    5.23, 4.22, 66.00, 0.64, 36.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 94. Slovenya
('Slovenya', 'SVN', 'Guney Avrupa', 'Avrupa', 2023, 2078938, 'Ljubljana', 'Slovence', 'Euro',
    61750000000.00, 29700.51, 1.70, 3.40, 7.00, 1074.00, 2170.00,
    81.50, 1.60, 8.50, 3.30, 4.40, 93.00, 20.20,
    99.70, 98.40, 97.60, 95.10, 77.60, 5.30, 10.50,
    6.40, 21.70, 61.70, 99.60, 75.00, 71.00,
    85.50, 119.80, 100.00, 38925, 1229, 99.50,
    18.80, 0.50, 3.70, 64.00, 84.60,
    24.40, 12.70, 16.60, 65, 62.30,
    81.70, 78.40, 83.20, 87.60, 83.70, 86.40, 84.60, 71.80,
    6.46, 7.54, 80.00, 0.79, 56.00,
    'Iliman Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 95. Honduras
('Honduras', 'HND', 'Orta Amerika', 'Amerika', 2023, 9904607, 'Tegucigalpa', 'Ispanyolca', 'Lempira',
    28488000000.00, 2876.42, 3.90, 8.20, 9.80, 390.00, 510.00,
    75.30, 15.10, 7.90, 0.40, 0.70, 97.00, 21.40,
    87.20, 92.50, 67.40, 42.70, 16.50, 5.90, 23.10,
    1.10, 54.70, 56.00, 92.70, 35.00, 46.00,
    39.30, 92.80, 85.70, 14044, 44, 76.30,
    183.50, 38.60, 1.60, 229.00, 41.70,
    52.10, 48.30, 3.10, 65, 40.20,
    42.60, 39.10, 55.90, 56.80, 58.60, 44.80, 41.70, 29.80,
    5.97, 5.36, 51.00, 0.72, 23.00,
    'Tropikal', 'UTC-6', 'Baskanci Cumhuriyet'),

-- 96. Paraguay
('Paraguay', 'PRY', 'Guney Amerika', 'Amerika', 2023, 7132538, 'Asuncion', 'Ispanyolca, Guarani', 'Guarani',
    41722000000.00, 5851.01, 4.50, 7.60, 4.90, 351.00, 480.00,
    74.20, 17.20, 6.70, 1.40, 0.80, 87.00, 20.30,
    94.00, 89.00, 73.50, 63.20, 35.10, 3.40, 21.60,
    0.90, 58.90, 37.70, 99.60, 45.00, 52.00,
    68.50, 102.10, 99.30, 32059, 30, 87.70,
    84.50, 7.80, 2.90, 153.00, 59.30,
    46.20, 24.20, 8.70, 65, 46.30,
    56.20, 54.10, 62.70, 68.90, 59.30, 64.20, 59.30, 43.80,
    5.65, 6.33, 56.00, 0.71, 28.00,
    'Subtropikal', 'UTC-4', 'Baskanci Cumhuriyet'),

-- 97. El Salvador
('El Salvador', 'SLV', 'Orta Amerika', 'Amerika', 2023, 6486205, 'San Salvador', 'Ispanyolca', 'Amerikan Dolari',
    29071000000.00, 4481.00, 2.60, 4.20, 7.30, 365.00, 490.00,
    73.30, 11.80, 7.20, 1.60, 1.30, 85.00, 24.60,
    89.00, 81.20, 79.50, 60.40, 29.40, 3.60, 23.80,
    1.10, 29.30, 12.60, 97.40, 40.00, 45.00,
    50.50, 147.00, 97.00, 10029, 555, 78.30,
    63.80, 52.00, 2.90, 590.00, 53.10,
    38.80, 22.80, 9.20, 55, 43.80,
    52.30, 48.20, 58.70, 64.30, 41.80, 58.10, 53.10, 40.90,
    6.12, 5.72, 39.00, 0.74, 34.00,
    'Tropikal', 'UTC-6', 'Baskanci Cumhuriyet'),

-- 98. Litvanya
('Litvanya', 'LTU', 'Kuzey Avrupa', 'Avrupa', 2023, 2722289, 'Vilnius', 'Litvanca', 'Euro',
    66445000000.00, 24406.61, 1.90, 5.80, 8.20, 840.00, 1750.00,
    76.40, 3.00, 6.70, 5.10, 6.40, 92.00, 26.30,
    99.80, 99.60, 98.50, 93.70, 71.20, 4.00, 12.50,
    4.50, 25.50, 34.80, 97.40, 65.00, 63.00,
    81.60, 134.10, 100.00, 84166, 1911, 97.90,
    47.50, 3.90, 3.40, 234.00, 74.20,
    37.30, 20.60, 11.20, 64, 57.30,
    74.20, 68.30, 75.60, 86.30, 65.80, 77.50, 74.20, 60.40,
    6.26, 7.18, 81.00, 0.80, 59.00,
    'Iliman Kontinental', 'UTC+2/+3', 'Yarı Baskanci Cumhuriyet'),

-- 99. Lao
('Laos', 'LAO', 'Guneydogu Asya', 'Asya', 2023, 7275560, 'Vientiane', 'Laoca', 'Kip',
    18827000000.00, 2588.59, 2.70, 9.40, 6.90, 155.00, 330.00,
    68.30, 37.40, 2.40, 0.40, 1.50, 85.00, 5.30,
    84.70, 91.70, 60.80, 37.10, 15.50, 2.90, 30.80,
    0.30, 53.30, 71.90, 82.10, 35.00, 40.00,
    25.50, 62.60, 93.60, 39586, 0, 76.20,
    6.90, 7.00, 1.20, 120.00, 46.20,
    36.40, 18.30, 0.80, 60, 39.60,
    45.40, 39.60, 48.70, 57.20, 59.70, 40.80, 46.20, 32.10,
    5.03, 1.77, 22.00, 0.62, 31.00,
    'Tropikal', 'UTC+7', 'Sosyalist Tek Parti Cumhuriyeti'),

-- 100. Letonya
('Letonya', 'LVA', 'Kuzey Avrupa', 'Avrupa', 2023, 1886198, 'Riga', 'Letonca', 'Euro',
    42207000000.00, 22376.63, 2.00, 6.70, 8.70, 620.00, 1350.00,
    75.70, 3.20, 6.40, 3.90, 5.40, 96.00, 23.60,
    99.90, 98.70, 98.30, 96.30, 65.40, 4.10, 13.40,
    3.50, 42.10, 54.00, 98.60, 60.00, 70.00,
    86.60, 113.30, 100.00, 73592, 1860, 97.30,
    49.60, 3.40, 3.10, 193.00, 72.30,
    35.60, 22.90, 12.10, 65, 54.70,
    69.80, 64.20, 74.10, 84.50, 73.50, 76.40, 72.30, 59.40,
    5.94, 7.31, 83.00, 0.79, 57.00,
    'Iliman Kontinental', 'UTC+2/+3', 'Parlamenter Cumhuriyet');

-- On birinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 101. Estonya
('Estonya', 'EST', 'Kuzey Avrupa', 'Avrupa', 2023, 1326535, 'Tallinn', 'Estonca', 'Euro',
    37033000000.00, 27919.79, 3.50, 5.30, 8.80, 725.00, 1680.00,
    78.70, 2.30, 6.70, 3.50, 4.60, 93.00, 21.20,
    99.80, 99.10, 99.30, 93.60, 69.60, 5.80, 11.40,
    12.10, 31.90, 51.40, 99.60, 70.00, 82.00,
    89.10, 154.70, 100.00, 58936, 1016, 98.20,
    23.20, 2.10, 2.60, 184.00, 79.60,
    30.40, 21.70, 13.00, 65, 68.20,
    78.30, 73.40, 78.20, 87.60, 75.20, 83.90, 79.60, 67.50,
    6.34, 7.85, 85.00, 0.77, 74.00,
    'Iliman Kontinental', 'UTC+2/+3', 'Parlamenter Cumhuriyet'),

-- 102. Bahreyn
('Bahreyn', 'BHR', 'Orta Dogu', 'Asya', 2023, 1701575, 'Manama', 'Arapca', 'Bahreyn Dinari',
    44390000000.00, 26087.60, 2.40, 1.90, 1.00, NULL, 1460.00,
    77.30, 5.50, 4.10, 2.40, 1.70, 99.00, 29.80,
    97.50, 98.60, 95.50, 92.50, 50.80, 2.40, 12.30,
    22.20, 0.00, 0.80, 100.00, 65.00, 49.00,
    100.00, 134.40, 100.00, 4122, 0, 99.80,
    58.40, 0.50, 3.60, 234.00, 71.30,
    NULL, 14.70, NULL, 60, 57.30,
    69.50, 74.30, 75.60, 83.70, 35.70, 83.60, 71.30, 51.60,
    6.23, 2.52, 36.00, 0.64, 42.00,
    'Kurak', 'UTC+3', 'Anayasal Monarsi'),

-- 103. Gambiya
('Gambiya', 'GMB', 'Bati Afrika', 'Afrika', 2023, 2416668, 'Banjul', 'Ingilizce', 'Dalasi',
    2078000000.00, 859.86, 4.40, 11.70, 18.80, 51.00, 100.00,
    62.10, 39.60, 3.10, 0.11, 1.10, 92.00, 10.30,
    55.60, 86.70, 52.70, 41.10, 3.10, 2.40, 29.40,
    0.30, 47.30, 48.20, 82.10, 30.00, 41.00,
    36.50, 143.60, 62.30, 3740, 0, 44.50,
    44.30, 8.30, 0.60, 42.00, 50.20,
    35.90, 48.60, 1.50, 60, 38.40,
    37.60, 31.20, 48.20, 46.50, 52.40, 29.40, 50.20, 30.10,
    4.75, 4.41, 30.00, 0.66, 37.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 104. Jamaika
('Jamaika', 'JAM', 'Karayipler', 'Amerika', 2023, 2961167, 'Kingston', 'Ingilizce', 'Jamaika Dolari',
    16148000000.00, 5453.02, 1.00, 6.20, 7.30, 201.00, 440.00,
    74.50, 12.40, 6.10, 1.30, 1.70, 95.00, 24.70,
    88.70, 93.00, 96.80, 80.50, 27.10, 5.40, 24.30,
    2.70, 11.00, 55.10, 90.40, 50.00, 63.00,
    55.10, 101.30, 99.00, 22121, 0, 85.20,
    461.40, 47.00, 2.70, 138.00, 54.30,
    45.50, 19.90, 3.80, 65, 43.60,
    53.70, 50.20, 62.10, 69.70, 60.70, 61.80, 54.30, 41.60,
    5.85, 7.13, 82.00, 0.72, 44.00,
    'Tropikal', 'UTC-5', 'Parlamenter Anayasal Monarsi'),

-- 105. Kıbrıs
('Kibris', 'CYP', 'Guney Avrupa', 'Avrupa', 2023, 1207359, 'Lefkosa', 'Yunanca, Turkce', 'Euro',
    26744000000.00, 22147.42, 2.50, 7.00, 3.10, 940.00, 1950.00,
    81.20, 2.10, 6.80, 4.00, 3.40, 97.00, 21.80,
    99.10, 99.70, 99.50, 96.20, 75.90, 6.30, 12.00,
    5.30, 13.90, 18.70, 100.00, 65.00, 75.00,
    90.80, 139.50, 100.00, 20006, 0, 99.70,
    4.10, 1.50, 5.30, 74.00, 76.40,
    31.40, 14.70, 12.30, 65, 60.90,
    75.60, 71.20, 80.10, 86.30, 59.20, 83.30, 76.40, 66.50,
    6.26, 7.56, 81.00, 0.73, 53.00,
    'Akdeniz', 'UTC+2/+3', 'Baskanci Cumhuriyet'),

-- 106. Trinidad ve Tobago
('Trinidad ve Tobago', 'TTO', 'Karayipler', 'Amerika', 2023, 1399488, 'Port of Spain', 'Ingilizce', 'Trinidad ve Tobago Dolari',
    26175000000.00, 18702.92, 0.00, 5.10, 6.30, 510.00, 1050.00,
    73.40, 16.40, 4.70, 4.20, 3.00, 92.00, 18.60,
    99.00, 98.90, 90.10, 74.30, 11.70, 3.20, 20.30,
    12.40, 0.40, 46.30, 98.40, 55.00, 52.00,
    77.30, 142.10, 100.00, 8320, 0, 92.30,
    605.30, 30.90, 5.10, 274.00, 44.90,
    40.30, 17.10, 6.20, 65, 51.30,
    59.30, 65.60, 63.20, 70.80, 51.20, 75.40, 44.90, 52.10,
    6.19, 7.16, 35.00, 0.75, 40.00,
    'Tropikal', 'UTC-4', 'Parlamenter Cumhuriyet'),

-- 107. Moğolistan
('Mogolistan', 'MNG', 'Dogu Asya', 'Asya', 2023, 3278290, 'Ulan Bator', 'Mogolca', 'Tögrög',
    16055000000.00, 4898.95, 5.20, 7.10, 13.40, 175.00, 410.00,
    69.90, 14.90, 3.80, 3.90, 8.00, 98.00, 20.60,
    98.40, 96.60, 94.10, 91.70, 60.30, 4.10, 18.70,
    7.10, 4.10, 8.10, 83.60, 40.00, 31.00,
    51.10, 133.90, 91.40, 49250, 1908, 42.60,
    42.50, 7.80, 6.40, 272.00, 54.80,
    32.70, 28.40, 12.10, 65, 48.90,
    51.80, 47.40, 62.30, 82.60, 35.70, 52.30, 54.80, 45.40,
    5.76, 6.48, 71.00, 0.74, 33.00,
    'Kontinental', 'UTC+7/+8', 'Yarı Baskanci Cumhuriyet'),

-- 108. Arnavutluk
('Arnavutluk', 'ALB', 'Guney Avrupa', 'Avrupa', 2023, 2877797, 'Tiran', 'Arnavutca', 'Lek',
    18260000000.00, 6345.32, 3.40, 11.30, 6.70, 270.00, 480.00,
    78.60, 7.80, 6.70, 1.90, 2.90, 95.00, 21.70,
    98.10, 96.50, 92.20, 82.40, 57.40, 3.30, 20.90,
    1.60, 38.20, 28.20, 91.40, 45.00, 64.00,
    72.20, 94.20, 100.00, 18000, 423, 92.80,
    15.20, 2.30, 3.00, 174.00, 70.40,
    33.20, 14.30, 9.10, 65, 41.20,
    62.60, 52.10, 71.40, 77.60, 59.20, 70.50, 70.40, 46.40,
    5.20, 6.11, 70.00, 0.75, 36.00,
    'Akdeniz', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 109. Kongo Demokratik Cumhuriyeti
('Kongo Demokratik Cumhuriyeti', 'COD', 'Orta Afrika', 'Afrika', 2023, 89561403, 'Kinshasa', 'Fransizca', 'Kongo Frangi',
    55350000000.00, 618.02, 8.90, 5.40, 9.80, 65.00, 120.00,
    60.70, 66.10, 4.10, 0.07, 0.80, 59.00, 6.70,
    77.20, 96.40, 64.10, 43.50, 6.60, 2.20, 42.30,
    0.10, 99.40, 67.30, 46.00, 20.00, 32.00,
    17.40, 44.70, 19.10, 152373, 4007, 24.60,
    205.00, 13.50, 0.20, 29.00, 33.20,
    42.10, 63.90, 1.30, 65, 33.70,
    28.10, 25.40, 38.20, 51.50, 56.30, 14.90, 33.20, 21.90,
    4.17, 1.40, 32.00, 0.61, 20.00,
    'Tropikal', 'UTC+1/+2', 'Yarı Baskanci Cumhuriyet'),

-- 110. Botsvana
('Botsvana', 'BWA', 'Guney Afrika', 'Afrika', 2023, 2351627, 'Gaborone', 'Ingilizce, Setswana', 'Pula',
    19547000000.00, 8312.25, 3.80, 26.00, 9.70, 230.00, 520.00,
    69.60, 30.30, 5.80, 0.50, 1.80, 95.00, 18.90,
    88.50, 89.80, 85.50, 68.20, 24.90, 8.40, 22.30,
    2.90, 9.40, 19.10, 92.20, 45.00, 58.00,
    73.00, 173.90, 70.60, 25798, 888, 73.60,
    92.50, 15.00, 2.40, 188.00, 65.10,
    53.30, 19.30, 6.10, 65, 45.40,
    54.80, 51.20, 59.30, 69.30, 45.90, 55.40, 65.10, 45.30,
    3.47, 7.73, 65.00, 0.72, 60.00,
    'Kurak', 'UTC+2', 'Parlamenter Cumhuriyet');

    -- On ikinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 111. Namibya
('Namibya', 'NAM', 'Guney Afrika', 'Afrika', 2023, 2540905, 'Windhoek', 'Ingilizce', 'Namibya Dolari',
    12520000000.00, 4926.58, 2.80, 33.40, 5.80, 165.00, 540.00,
    63.70, 32.40, 8.60, 0.40, 2.70, 87.00, 17.20,
    91.50, 98.60, 61.60, 47.50, 16.20, 3.10, 23.50,
    1.60, 9.50, 8.30, 83.70, 40.00, 62.00,
    51.00, 113.90, 57.00, 48116, 2626, 46.10,
    69.40, 18.60, 0.50, 196.00, 54.30,
    59.10, 17.40, 4.80, 60, 44.60,
    48.40, 44.10, 53.80, 63.90, 36.90, 47.10, 54.30, 39.50,
    4.46, 6.52, 76.00, 0.71, 51.00,
    'Kurak', 'UTC+2', 'Yarı Baskanci Cumhuriyet'),

-- 112. Makedonya
('Kuzey Makedonya', 'MKD', 'Guney Avrupa', 'Avrupa', 2023, 2083374, 'Skopje', 'Makedonca, Arnavutca', 'Denar',
    13825000000.00, 6634.60, 2.90, 15.20, 10.60, 340.00, 580.00,
    76.00, 10.30, 6.60, 2.90, 4.20, 83.00, 22.40,
    97.80, 99.30, 79.10, 71.10, 42.90, 3.70, 19.40,
    3.40, 24.80, 39.60, 99.40, 45.00, 48.00,
    81.40, 104.50, 100.00, 14182, 699, 92.30,
    23.70, 1.60, 3.70, 154.00, 66.70,
    33.00, 21.60, 11.60, 64, 45.80,
    60.10, 52.30, 67.80, 73.80, 57.10, 67.60, 66.70, 50.20,
    5.20, 6.03, 67.00, 0.72, 39.00,
    'Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 113. Mali
('Mali', 'MLI', 'Bati Afrika', 'Afrika', 2023, 20250833, 'Bamako', 'Fransizca', 'CFA Frangi',
    17827000000.00, 879.82, 4.70, 7.50, 2.90, 67.00, 140.00,
    59.30, 62.30, 3.80, 0.13, 0.10, 62.00, 8.60,
    35.50, 61.30, 41.30, 25.60, 4.40, 3.80, 38.00,
    0.28, 39.80, 3.80, 78.30, 22.00, 41.00,
    13.00, 115.10, 48.00, 18700, 593, 26.90,
    122.00, 10.20, 0.40, 30.00, 35.60,
    33.00, 42.10, 2.20, 58, 35.20,
    30.40, 26.30, 35.60, 33.70, 24.50, 19.40, 35.60, 26.30,
    4.48, 2.18, 32.00, 0.59, 28.00,
    'Karisik (Kurak/Yari Kurak)', 'UTC+0', 'Askeri Cunta'),

-- 114. Brunei
('Brunei', 'BRN', 'Guneydogu Asya', 'Asya', 2023, 437479, 'Bandar Seri Begawan', 'Malayca', 'Brunei Dolari',
    14006000000.00, 32015.91, 1.20, 8.70, 3.70, NULL, 2100.00,
    75.90, 9.80, 2.40, 1.80, 2.70, 95.00, 14.10,
    97.20, 95.00, 94.30, 81.40, 31.40, 4.40, 16.20,
    16.60, 0.10, 72.10, 99.50, 60.00, 44.00,
    95.00, 131.90, 100.00, 3029, 0, 93.10,
    16.40, 0.50, 2.90, 110.00, 77.40,
    NULL, 0.00, NULL, 60, 57.20,
    71.90, 73.80, 72.40, 73.40, 72.80, 81.60, 77.40, 65.10,
    6.13, 0.00, 45.00, 0.65, 60.00,
    'Tropikal', 'UTC+8', 'Mutlak Monarsi'),

-- 115. Haiti
('Haiti', 'HTI', 'Karayipler', 'Amerika', 2023, 11402528, 'Port-au-Prince', 'Fransizca, Kreolce', 'Gourde',
    8498000000.00, 745.28, -1.70, 15.70, 19.70, 93.00, 230.00,
    64.30, 52.20, 4.40, 0.23, 0.70, 62.00, 22.70,
    61.70, 84.40, 45.90, 29.10, 18.40, 2.80, 32.10,
    0.30, 79.60, 3.60, 65.50, 20.00, 41.00,
    32.50, 59.50, 45.90, 4266, 0, 39.70,
    96.70, 10.20, 0.40, 113.00, 28.40,
    41.10, 58.50, 0.70, 55, 35.20,
    28.40, 21.10, 38.60, 44.50, 27.70, 24.90, 28.40, 21.90,
    3.72, 3.96, 47.00, 0.59, 20.00,
    'Tropikal', 'UTC-5', 'Yarı Baskanci Cumhuriyet'),

-- 116. Bahama
('Bahama', 'BHS', 'Karayipler', 'Amerika', 2023, 393244, 'Nassau', 'Ingilizce', 'Bahama Dolari',
    12897000000.00, 32795.77, 1.30, 13.20, 4.70, 210.00, 1650.00,
    73.90, 8.30, 5.80, 2.00, 2.90, 95.00, 31.60,
    95.60, 91.80, 84.60, 81.40, 15.00, 2.30, 18.30,
    6.50, 1.20, 51.40, 98.90, 60.00, 80.00,
    85.00, 116.20, 100.00, 2693, 0, 91.40,
    453.70, 30.40, 4.50, 363.00, 62.30,
    NULL, 12.50, NULL, 65, 57.40,
    65.80, 66.50, 70.20, 73.40, 67.10, 73.70, 62.30, 57.40,
    6.00, 7.30, 70.00, 0.71, 63.00,
    'Tropikal', 'UTC-5', 'Parlamenter Anayasal Monarsi'),

-- 117. Madagaskar
('Madagaskar', 'MDG', 'Dogu Afrika', 'Afrika', 2023, 27691018, 'Antananarivo', 'Malgasca, Fransizca', 'Ariary',
    14472000000.00, 522.63, 4.20, 1.90, 10.60, 55.00, 130.00,
    67.00, 39.80, 5.10, 0.20, 0.20, 74.00, 5.30,
    74.80, 98.40, 35.40, 30.60, 5.10, 2.90, 40.10,
    0.10, 70.20, 21.40, 54.40, 30.00, 46.00,
    16.20, 42.80, 33.70, 31640, 854, 14.30,
    20.40, 6.10, 0.90, 82.00, 41.20,
    42.60, 70.70, 2.20, 60, 37.10,
    32.90, 27.10, 44.10, 46.20, 41.40, 15.70, 41.20, 24.30,
    4.34, 5.70, 53.00, 0.72, 26.00,
    'Tropikal', 'UTC+3', 'Yarı Baskanci Cumhuriyet'),

-- 118. Moldova
('Moldova', 'MDA', 'Dogu Avrupa', 'Avrupa', 2023, 4033963, 'Chisinau', 'Moldovaca', 'Moldovya Leyi',
    13679000000.00, 3391.18, 5.10, 2.70, 13.80, 170.00, 450.00,
    71.80, 12.40, 6.40, 4.00, 5.80, 88.00, 18.90,
    99.40, 89.70, 87.10, 78.50, 38.20, 6.70, 20.30,
    3.20, 27.80, 12.60, 92.10, 40.00, 54.00,
    76.10, 134.50, 100.00, 12873, 1152, 76.10,
    32.40, 3.20, 2.90, 216.00, 60.30,
    25.70, 25.20, 11.90, 63, 43.70,
    55.10, 48.20, 61.40, 74.60, 43.60, 64.50, 60.30, 51.60,
    5.77, 6.14, 64.00, 0.74, 34.00,
    'Iliman Kontinental', 'UTC+2/+3', 'Parlamenter Cumhuriyet'),

-- 119. Liberya
('Liberya', 'LBR', 'Bati Afrika', 'Afrika', 2023, 5057681, 'Monrovia', 'Ingilizce', 'Liberya Dolari',
    3491000000.00, 690.04, 4.40, 3.30, 6.90, 140.00, 220.00,
    64.10, 63.20, 8.50, 0.04, 0.80, 74.00, 9.90,
    48.30, 37.70, 37.70, 30.20, 14.10, 2.60, 30.70,
    0.20, 88.50, 43.10, 73.30, 25.00, 42.00,
    26.00, 81.50, 27.60, 10600, 429, 24.50,
    34.60, 3.20, 0.70, 49.00, 39.10,
    35.30, 50.90, 3.50, 60, 34.60,
    31.40, 27.30, 40.30, 33.60, 48.30, 16.10, 39.10, 25.10,
    4.46, 5.43, 62.00, 0.65, 29.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 120. Nikaragua
('Nikaragua', 'NIC', 'Orta Amerika', 'Amerika', 2023, 6624554, 'Managua', 'Ispanyolca', 'Cordoba',
    14013000000.00, 2116.03, 4.10, 4.80, 10.30, 180.00, 340.00,
    74.50, 15.70, 8.60, 1.00, 0.90, 98.00, 23.70,
    82.60, 94.40, 69.40, 45.70, 19.00, 4.50, 23.90,
    0.80, 51.30, 25.90, 82.30, 35.00, 49.00,
    27.90, 83.60, 88.10, 23897, 0, 80.60,
    84.30, 8.50, 1.70, 200.00, 51.90,
    46.20, 24.90, 7.90, 60, 44.20,
    47.30, 41.10, 59.70, 58.60, 47.50, 45.40, 51.90, 39.10,
    6.10, 2.88, 45.00, 0.73, 22.00,
    'Tropikal', 'UTC-6', 'Baskanci Cumhuriyet');

-- On ucuncu 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 121. Gürcistan
('Gurcistan', 'GEO', 'Bati Asya', 'Asya', 2023, 3989167, 'Tiflis', 'Gurcuce', 'Lari',
    18629000000.00, 4669.18, 10.10, 18.30, 10.90, 141.00, 380.00,
    73.70, 9.60, 7.10, 6.10, 2.90, 92.00, 21.70,
    99.40, 98.60, 98.30, 87.40, 63.90, 3.50, 19.60,
    2.60, 20.20, 40.60, 98.20, 50.00, 57.00,
    68.80, 144.30, 100.00, 20553, 1566, 92.10,
    19.50, 2.30, 5.10, 256.00, 73.90,
    36.40, 19.50, 7.10, 65, 45.10,
    59.30, 56.40, 64.30, 82.10, 59.40, 65.20, 73.90, 48.50,
    4.97, 5.12, 59.00, 0.80, 55.00,
    'Karisik (Iliman/Subtropikal/Kontinental)', 'UTC+4', 'Yarı Baskanci Cumhuriyet'),

-- 122. Ruanda
('Ruanda', 'RWA', 'Dogu Afrika', 'Afrika', 2023, 12952218, 'Kigali', 'Kiniaruanda, Ingilizce, Fransizca', 'Ruanda Frangi',
    10333000000.00, 797.79, 8.20, 16.00, 13.90, 105.00, 170.00,
    69.00, 26.00, 5.90, 0.10, 1.60, 95.00, 5.80,
    73.20, 94.80, 42.30, 43.10, 6.70, 3.10, 35.30,
    0.10, 86.20, 19.70, 60.40, 45.00, 41.00,
    46.20, 83.30, 46.60, 14008, 0, 43.10,
    50.40, 2.50, 4.50, 464.00, 78.10,
    43.70, 38.20, 1.10, 65, 43.10,
    41.50, 36.40, 51.30, 53.60, 40.20, 30.20, 78.10, 28.10,
    3.27, 3.10, 57.00, 0.81, 54.00,
    'Tropikal Alpin', 'UTC+2', 'Baskanci Cumhuriyet'),

-- 123. Gabon
('Gabon', 'GAB', 'Orta Afrika', 'Afrika', 2023, 2225734, 'Libreville', 'Fransizca', 'CFA Frangi',
    16874000000.00, 7581.36, 3.00, 20.50, 4.80, 270.00, 760.00,
    66.50, 33.10, 3.10, 0.70, 6.30, 70.00, 15.00,
    84.70, 96.40, 59.60, 41.60, 8.90, 2.70, 29.70,
    2.80, 80.10, 90.00, 88.60, 35.00, 46.00,
    62.00, 140.10, 91.60, 9170, 649, 73.10,
    42.40, 9.80, 1.40, 179.00, 46.30,
    38.00, 33.40, 2.10, 60, 41.20,
    47.30, 52.10, 49.40, 56.80, 74.80, 50.30, 46.30, 36.40,
    4.83, 3.61, 56.00, 0.69, 31.00,
    'Tropikal', 'UTC+1', 'Baskanci Cumhuriyet'),

-- 124. Mauritius
('Mauritius', 'MUS', 'Dogu Afrika', 'Afrika', 2023, 1271768, 'Port Louis', 'Ingilizce, Fransizca', 'Mauritius Rupisi',
    14180000000.00, 11149.40, 8.90, 7.40, 9.00, 260.00, 830.00,
    74.90, 12.20, 6.00, 2.40, 3.40, 93.00, 10.80,
    93.70, 95.40, 95.20, 80.30, 38.80, 4.90, 22.30,
    3.40, 11.50, 19.00, 99.90, 60.00, 80.00,
    64.00, 147.60, 100.00, 2066, 0, 94.30,
    24.10, 1.80, 7.80, 169.00, 67.10,
    36.80, 10.30, 9.50, 63, 54.80,
    63.50, 64.10, 68.60, 76.70, 57.60, 70.50, 67.10, 55.30,
    6.00, 8.08, 75.00, 0.72, 54.00,
    'Tropikal', 'UTC+4', 'Parlamenter Cumhuriyet'),

-- 125. Malta
('Malta', 'MLT', 'Guney Avrupa', 'Avrupa', 2023, 441543, 'Valletta', 'Maltaca, Ingilizce', 'Euro',
    15848000000.00, 35891.87, 6.90, 2.50, 5.70, 835.00, 1940.00,
    82.60, 5.60, 9.90, 3.00, 4.50, 96.00, 28.90,
    94.10, 99.90, 98.30, 92.60, 45.10, 5.20, 12.90,
    3.50, 10.70, 1.10, 100.00, 70.00, 75.00,
    87.00, 144.60, 100.00, 3096, 0, 99.80,
    32.70, 0.70, 4.50, 138.00, 75.50,
    28.70, 16.30, 13.40, 65, 63.90,
    77.10, 77.40, 82.90, 80.50, 50.30, 83.40, 75.50, 72.80,
    6.45, 7.57, 78.00, 0.70, 54.00,
    'Akdeniz', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 126. Solomon Adaları
('Solomon Adalari', 'SLB', 'Melanezya', 'Okyanusya', 2023, 686884, 'Honiara', 'Ingilizce', 'Solomon Adalari Dolari',
    1584000000.00, 2306.07, 2.30, 5.20, 4.40, 160.00, 270.00,
    73.00, 17.40, 5.20, 0.20, 1.40, 75.00, 22.50,
    77.60, 69.40, 52.80, 35.60, 14.70, 9.90, 33.80,
    0.40, 62.90, 77.90, 67.80, 30.00, 64.00,
    11.90, 70.30, 67.90, 1360, 0, 29.10,
    20.60, 4.30, 1.20, NULL, 51.30,
    37.10, 24.70, 7.20, 55, 39.60,
    39.80, 38.60, 51.40, 50.10, 66.80, 22.30, 51.30, 33.60,
    4.70, NULL, 55.00, NULL, 42.00,
    'Tropikal', 'UTC+11', 'Parlamenter Anayasal Monarsi'),

-- 127. Belize
('Belize', 'BLZ', 'Orta Amerika', 'Amerika', 2023, 397628, 'Belmopan', 'Ingilizce', 'Belize Dolari',
    2325000000.00, 5847.34, 5.70, 6.20, 5.30, 205.00, 780.00,
    74.60, 12.40, 6.20, 1.10, 1.30, 95.00, 24.10,
    82.70, 95.10, 65.10, 45.30, 24.50, 7.40, 26.40,
    1.50, 36.10, 60.20, 98.10, 45.00, 70.00,
    53.70, 59.60, 95.10, 2870, 0, 84.60,
    367.80, 24.30, 2.10, 356.00, 48.90,
    53.30, 41.30, 6.20, 65, 48.20,
    49.80, 46.90, 58.10, 60.30, 64.70, 58.10, 48.90, 40.80,
    5.96, 6.74, 68.00, 0.65, 38.00,
    'Tropikal', 'UTC-6', 'Parlamenter Anayasal Monarsi'),

-- 128. Moritanya
('Moritanya', 'MRT', 'Bati Afrika', 'Afrika', 2023, 4649658, 'Nouakchott', 'Arapca', 'Ouguiya',
    9912000000.00, 2131.97, 6.40, 11.30, 9.50, 125.00, 190.00,
    64.90, 50.50, 4.40, 0.20, 0.40, 77.00, 12.70,
    53.50, 78.40, 36.10, 24.90, 5.50, 1.90, 29.70,
    0.60, 9.40, 0.50, 70.70, 25.00, 40.00,
    43.50, 104.50, 46.70, 11066, 728, 79.30,
    46.70, 10.40, 0.20, 45.00, 42.30,
    32.60, 31.00, 0.90, 60, 35.30,
    36.70, 35.30, 43.60, 39.40, 16.90, 47.90, 42.30, 26.40,
    4.15, 3.41, 49.00, 0.61, 28.00,
    'Kurak', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 129. Butan
('Butan', 'BTN', 'Guney Asya', 'Asya', 2023, 771608, 'Thimphu', 'Dzongkha', 'Ngultrum',
    2533000000.00, 3283.97, 4.00, 5.30, 4.20, 178.00, 340.00,
    72.10, 21.80, 3.10, 0.40, 1.70, 97.00, 6.40,
    67.10, 95.40, 89.30, 64.20, 15.70, 6.70, 27.10,
    1.30, 84.30, 72.50, 99.30, 55.00, 83.00,
    53.10, 93.60, 100.00, 10578, 0, 64.20,
    11.50, 1.10, 0.90, 45.00, 69.10,
    37.40, 8.20, 2.40, 60, 53.80,
    54.30, 47.80, 59.20, 66.60, 78.20, 52.30, 69.10, 41.50,
    5.31, 5.30, 69.00, 0.64, 68.00,
    'Karisik (Alpin/Subtropikal)', 'UTC+6', 'Anayasal Monarsi'),

-- 130. Orta Afrika Cumhuriyeti
('Orta Afrika Cumhuriyeti', 'CAF', 'Orta Afrika', 'Afrika', 2023, 4829767, 'Bangui', 'Fransizca, Sango', 'CFA Frangi',
    2520000000.00, 521.77, 3.40, 6.30, 2.30, 70.00, 130.00,
    53.30, 84.50, 7.50, 0.07, 1.00, 47.00, 7.50,
    37.40, 72.20, 16.70, 14.30, 3.20, 1.20, 39.70,
    0.10, 89.30, 35.60, 46.30, 20.00, 37.00,
    14.30, 32.40, 14.30, 24307, 0, 33.10,
    118.70, 19.40, 0.20, 16.00, 31.40,
    56.20, 71.00, 0.70, 60, 30.60,
    23.90, 21.40, 30.60, 27.40, 42.60, 12.90, 31.40, 19.70,
    3.45, 1.32, 29.00, 0.35, 24.00,
    'Tropikal', 'UTC+1', 'Baskanci Cumhuriyet');

-- On dorduncu 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 131. Benin
('Benin', 'BEN', 'Bati Afrika', 'Afrika', 2023, 12123200, 'Porto-Novo', 'Fransizca', 'CFA Frangi',
    17144000000.00, 1414.98, 6.40, 2.20, 1.00, 68.00, 170.00,
    61.80, 58.70, 2.50, 0.20, 0.50, 71.00, 9.60,
    42.40, 97.80, 58.10, 42.00, 13.70, 3.00, 39.10,
    0.60, 54.30, 30.30, 66.40, 30.00, 43.00,
    23.80, 89.20, 40.00, 16000, 438, 41.70,
    60.30, 3.10, 0.40, 83.00, 40.20,
    47.80, 38.20, 2.10, 60, 38.90,
    36.30, 33.20, 42.40, 50.10, 44.10, 29.40, 40.20, 29.30,
    5.12, 5.57, 63.00, 0.64, 43.00,
    'Tropikal', 'UTC+1', 'Baskanci Cumhuriyet'),

-- 132. Togo
('Togo', 'TGO', 'Bati Afrika', 'Afrika', 2023, 8278724, 'Lome', 'Fransizca', 'CFA Frangi',
    8412000000.00, 1016.13, 5.60, 3.90, 4.50, 64.00, 110.00,
    61.00, 45.20, 6.20, 0.05, 0.70, 92.00, 8.40,
    66.50, 94.30, 66.60, 41.30, 14.50, 5.30, 32.90,
    0.30, 75.70, 3.60, 65.10, 30.00, 41.00,
    32.40, 79.90, 52.40, 11652, 522, 36.90,
    82.40, 9.00, 0.30, 76.00, 35.40,
    43.10, 55.10, 1.90, 60, 35.60,
    33.80, 29.60, 41.90, 51.90, 28.70, 32.10, 35.40, 25.20,
    5.12, 2.43, 47.00, 0.56, 30.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 133. Komorlar
('Komorlar', 'COM', 'Dogu Afrika', 'Afrika', 2023, 869601, 'Moroni', 'Arapca, Fransizca', 'Komor Frangi',
    1335000000.00, 1535.06, 2.20, 4.30, 8.10, 120.00, 180.00,
    64.30, 51.30, 4.50, 0.20, 2.20, 75.00, 7.80,
    58.80, 80.70, 53.40, 41.80, 9.00, 4.30, 34.50,
    0.30, 46.70, 19.70, 83.70, 30.00, 54.00,
    8.50, 69.30, 83.60, 880, 0, 56.70,
    44.30, 8.50, 0.30, 23.00, 41.30,
    45.30, 42.40, 1.50, 60, 36.50,
    34.10, 30.30, 42.40, 45.60, 38.20, 30.90, 41.30, 26.40,
    4.29, 3.67, 59.00, 0.57, 20.00,
    'Tropikal', 'UTC+3', 'Federal Baskanci Cumhuriyet'),

-- 134. Karadağ
('Karadag', 'MNE', 'Guney Avrupa', 'Avrupa', 2023, 628066, 'Podgorica', 'Karadagca', 'Euro',
    5809000000.00, 9248.68, 4.10, 14.70, 10.70, 450.00, 900.00,
    76.80, 2.40, 9.10, 2.30, 3.90, 91.00, 23.30,
    98.70, 96.90, 90.30, 86.50, 56.10, 4.00, 19.40,
    3.70, 43.10, 61.50, 97.10, 50.00, 67.00,
    77.60, 206.40, 100.00, 7765, 250, 96.20,
    26.60, 2.70, 6.30, 174.00, 66.30,
    39.20, 23.40, 14.30, 66, 51.40,
    62.40, 54.30, 69.30, 79.70, 71.80, 74.10, 66.30, 55.80,
    5.55, 6.02, 65.00, 0.73, 43.00,
    'Akdeniz', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 135. Yeşil Burun (Cabo Verde)
('Yesil Burun', 'CPV', 'Bati Afrika', 'Afrika', 2023, 555987, 'Praia', 'Portekizce', 'Escudo',
    2208000000.00, 3969.56, 5.10, 8.60, 4.60, 136.00, 320.00,
    73.00, 14.40, 5.20, 0.80, 2.10, 97.00, 11.80,
    86.80, 97.80, 89.70, 78.10, 24.10, 5.00, 21.50,
    1.00, 25.40, 14.20, 87.10, 40.00, 72.00,
    62.00, 111.60, 93.60, 1350, 0, 69.70,
    58.40, 8.00, 2.60, 267.00, 54.80,
    47.20, 24.70, 6.70, 65, 47.30,
    51.20, 45.30, 59.40, 70.60, 45.90, 55.70, 54.80, 43.20,
    4.20, 7.78, 78.00, 0.75, 58.00,
    'Tropikal', 'UTC-1', 'Parlamenter Cumhuriyet'),

-- 136. Guyana
('Guyana', 'GUY', 'Guney Amerika', 'Amerika', 2023, 786552, 'Georgetown', 'Ingilizce', 'Guyana Dolari',
    7428000000.00, 9443.33, 57.80, 15.80, 3.40, 270.00, 540.00,
    70.10, 25.10, 5.50, 1.60, 1.60, 95.00, 20.20,
    88.50, 95.00, 83.40, 60.00, 18.60, 6.30, 25.80,
    3.10, 25.20, 83.90, 96.30, 35.00, 60.00,
    37.30, 83.80, 91.80, 3995, 0, 83.60,
    97.40, 15.00, 4.30, 155.00, 53.20,
    44.60, 35.00, 5.30, 60, 41.30,
    47.20, 55.10, 55.80, 65.60, 59.80, 56.40, 53.20, 38.20,
    5.08, 6.25, 55.00, 0.69, 39.00,
    'Tropikal', 'UTC-4', 'Baskanci Cumhuriyet'),

-- 137. Fiji
('Fiji', 'FJI', 'Melanezya', 'Okyanusya', 2023, 896445, 'Suva', 'Ingilizce, Fiji Dili, Fiji Hindi', 'Fiji Dolari',
    5496000000.00, 6131.38, 2.00, 4.80, 3.60, 360.00, 560.00,
    67.40, 15.00, 3.50, 0.80, 2.30, 94.00, 30.20,
    99.10, 99.00, 91.60, 78.70, 16.30, 3.80, 29.70,
    1.50, 26.40, 55.90, 93.80, 45.00, 71.00,
    50.00, 119.90, 98.20, 3440, 597, 91.70,
    39.60, 2.30, 3.50, 142.00, 58.40,
    36.70, 29.90, 2.60, 55, 46.30,
    54.60, 51.30, 56.20, 73.40, 63.80, 62.20, 58.40, 39.70,
    5.35, 5.72, 60.00, 0.67, 55.00,
    'Tropikal', 'UTC+12', 'Parlamenter Cumhuriyet'),

-- 138. Gine
('Gine', 'GIN', 'Bati Afrika', 'Afrika', 2023, 13132795, 'Conakry', 'Fransizca', 'Gine Frangi',
    15750000000.00, 1199.26, 3.10, 5.20, 10.60, 60.00, 150.00,
    61.60, 64.90, 4.10, 0.08, 0.30, 47.00, 7.70,
    32.00, 83.50, 41.20, 33.50, 11.50, 2.60, 40.60,
    0.30, 76.30, 25.90, 61.90, 25.00, 41.00,
    26.00, 107.60, 44.00, 44348, 662, 33.50,
    72.40, 8.70, 0.60, 42.00, 34.90,
    33.70, 43.70, 1.40, 55, 33.60,
    31.20, 28.80, 39.20, 40.10, 41.10, 25.60, 34.90, 24.90,
    4.77, 3.08, 50.00, 0.65, 28.00,
    'Tropikal', 'UTC+0', 'Baskanci Cumhuriyet'),

-- 139. Surinam
('Surinam', 'SUR', 'Guney Amerika', 'Amerika', 2023, 586632, 'Paramaribo', 'Felemenkce', 'Surinam Dolari',
    4364000000.00, 7439.32, 1.30, 9.80, 53.00, 270.00, 590.00,
    71.70, 18.50, 6.40, 1.20, 3.10, 85.00, 26.40,
    94.40, 88.40, 69.70, 48.60, 11.70, 4.50, 24.30,
    4.20, 25.60, 98.30, 95.20, 45.00, 58.00,
    60.10, 141.80, 97.70, 4304, 166, 90.60,
    86.90, 5.50, 2.90, 186.00, 55.10,
    57.60, 47.00, 4.70, 60, 42.90,
    48.30, 42.20, 57.60, 61.90, 65.80, 63.70, 55.10, 35.10,
    5.73, 6.82, 62.00, 0.72, 38.00,
    'Tropikal', 'UTC-3', 'Baskanci Cumhuriyet'),

-- 140. Cibuti
('Cibuti', 'DJI', 'Dogu Afrika', 'Afrika', 2023, 988000, 'Cibuti', 'Fransizca, Arapca', 'Cibuti Frangi',
    3482000000.00, 3523.28, 5.10, 11.60, 3.50, 250.00, 300.00,
    67.10, 49.80, 2.20, 0.20, 1.40, 68.00, 13.50,
    68.00, 64.30, 51.90, 38.50, 5.50, 3.60, 33.90,
    0.50, 100.00, 0.20, 75.60, 30.00, 42.00,
    55.70, 41.30, 61.80, 3065, 100, 60.10,
    14.20, 7.40, 0.90, 83.00, 47.30,
    41.60, 21.30, 2.80, 60, 40.20,
    39.20, 36.80, 44.30, 45.60, 26.30, 39.40, 47.30, 33.10,
    4.31, 2.71, 56.00, 0.60, 30.00,
    'Kurak', 'UTC+3', 'Yarı Baskanci Cumhuriyet');

-- On besinci 10 ulkenin yasam kalitesi verileri
INSERT INTO ulke_yasam_kalitesi (
    ulke_adi, ulke_kodu, bolge, kita, yil, nufus, baskent, resmi_dil, para_birimi,
    -- Ekonomik gostergeler
    gsyih, kisi_basi_gsyih, buyume_orani, issizlik_orani, enflasyon_orani, asgari_ucret, ortalama_maas,
    -- Saglik gostergeleri
    yasam_suresi, bebek_olum_orani, saglik_harcamalari_gsyih, doktor_sayisi_per_1000, hastane_yatak_sayisi_per_1000, asilama_orani, obezite_orani,
    -- Egitim gostergeleri
    okuma_yazma_orani, ilkokul_kayit_orani, ortaokul_kayit_orani, lise_kayit_orani, universite_kayit_orani, egitim_harcamalari_gsyih, ogretmen_basina_ogrenci,
    -- Cevre gostergeleri
    co2_emisyonu, yenilenebilir_enerji_orani, orman_alani_yuzdesi, temiz_su_erisimi, atik_yonetimi_skoru, hava_kalitesi_endeksi,
    -- Altyapi gostergeleri
    internet_kullanim_orani, cep_telefonu_sahiplik_orani, elektrik_erisim_orani, karayolu_agi_km, demiryolu_agi_km, guvenli_konut_erisimi,
    -- Guvenlik gostergeleri
    suc_orani, cinayet_orani, polis_sayisi_per_1000, hapishane_nufusu_per_100k, guvenlik_endeksi,
    -- Sosyal refah gostergeleri
    gini_endeksi, yoksulluk_orani, sosyal_harcamalar_gsyih, emeklilik_yasi, is_yasam_dengesi_endeksi,
    -- Genel yasam kalitesi endeksleri
    genel_yasam_kalitesi_endeksi, ekonomik_endeks, saglik_endeksi, egitim_endeksi, cevre_endeksi, altyapi_endeksi, guvenlik_endeksi_genel, sosyal_refah_endeksi,
    -- Diger endeksler
    mutluluk_endeksi, demokrasi_endeksi, basin_ozgurlugu_endeksi, cinsiyet_esitligi_endeksi, yolsuzluk_algisi_endeksi,
    -- Ekstra bilgiler
    iklim_turu, zaman_dilimi, yonetim_bicimi
) VALUES
-- 141. Ekvator Ginesi
('Ekvator Ginesi', 'GNQ', 'Orta Afrika', 'Afrika', 2023, 1402985, 'Malabo', 'Ispanyolca, Fransizca, Portekizce', 'CFA Frangi',
    11927000000.00, 8501.21, -5.80, 6.70, 4.80, 225.00, 500.00,
    58.70, 67.20, 2.80, 0.40, 2.10, 39.00, 8.00,
    95.30, 79.90, 62.10, 43.70, 16.20, 1.30, 29.80,
    5.70, 7.60, 55.90, 64.90, 30.00, 46.00,
    26.20, 45.30, 66.60, 2880, 0, 66.40,
    79.40, 2.30, 1.90, 59.00, 42.10,
    NULL, 30.00, NULL, 60, 35.40,
    39.40, 52.10, 36.50, 57.40, 51.30, 35.80, 42.10, 30.10,
    5.32, 1.92, 46.00, 0.59, 17.00,
    'Tropikal', 'UTC+1', 'Baskanci Cumhuriyet'),

-- 142. Slovenya
('Slovenya', 'SVN', 'Guney Avrupa', 'Avrupa', 2023, 2078938, 'Ljubljana', 'Slovence', 'Euro',
    61750000000.00, 29700.51, 1.70, 3.40, 7.00, 1074.00, 2170.00,
    81.50, 1.60, 8.50, 3.30, 4.40, 93.00, 20.20,
    99.70, 98.40, 97.60, 95.10, 77.60, 5.30, 10.50,
    6.40, 21.70, 61.70, 99.60, 75.00, 71.00,
    85.50, 119.80, 100.00, 38925, 1229, 99.50,
    18.80, 0.50, 3.70, 64.00, 84.60,
    24.40, 12.70, 16.60, 65, 62.30,
    81.70, 78.40, 83.20, 87.60, 83.70, 86.40, 84.60, 71.80,
    6.46, 7.54, 80.00, 0.79, 56.00,
    'Iliman Kontinental', 'UTC+1/+2', 'Parlamenter Cumhuriyet'),

-- 143. Lesoto
('Lesoto', 'LSO', 'Guney Afrika', 'Afrika', 2023, 2142249, 'Maseru', 'Sesotho, Ingilizce', 'Loti',
    2724000000.00, 1271.11, 2.10, 22.80, 9.40, 182.00, 250.00,
    54.30, 72.40, 11.10, 0.10, 1.30, 90.00, 16.60,
    79.40, 93.60, 53.30, 31.70, 11.00, 6.40, 35.80,
    1.10, 95.70, 1.60, 77.60, 30.00, 43.00,
    31.80, 91.20, 44.60, 5940, 2.80, 36.90,
    42.10, 41.50, 0.60, 109.00, 39.70,
    44.90, 49.70, 10.50, 65, 35.20,
    34.60, 29.30, 45.80, 52.30, 26.30, 25.80, 39.70, 27.60,
    3.51, 6.30, 65.00, 0.68, 38.00,
    'Alpin', 'UTC+2', 'Parlamenter Anayasal Monarsi'),

-- 144. Timor-Leste
('Timor-Leste', 'TLS', 'Guneydogu Asya', 'Asya', 2023, 1318445, 'Dili', 'Tetum, Portekizce', 'Amerikan Dolari',
    4039000000.00, 3063.49, 2.00, 4.90, 7.40, 115.00, 210.00,
    69.50, 39.50, 3.90, 0.10, 5.90, 82.00, 3.80,
    68.10, 94.30, 78.70, 59.10, 18.10, 6.80, 31.60,
    0.40, 39.90, 45.40, 78.30, 30.00, 52.00,
    27.50, 118.60, 85.60, 6040, 0, 39.90,
    17.40, 3.90, 0.70, 26.00, 45.30,
    28.70, 41.80, 2.90, 60, 38.10,
    39.10, 36.30, 47.40, 59.60, 48.30, 36.80, 45.30, 30.60,
    5.33, 7.06, 65.00, 0.74, 40.00,
    'Tropikal', 'UTC+9', 'Yarı Baskanci Cumhuriyet'),

-- 145. Barbados
('Barbados', 'BRB', 'Karayipler', 'Amerika', 2023, 287375, 'Bridgetown', 'Ingilizce', 'Barbados Dolari',
    5209000000.00, 18126.59, 5.80, 10.60, 5.50, 710.00, 1420.00,
    79.20, 11.30, 6.30, 2.50, 6.00, 90.00, 23.10,
    99.60, 99.70, 97.40, 93.60, 65.40, 4.70, 14.10,
    4.40, 5.50, 14.70, 98.10, 60.00, 85.00,
    82.00, 128.10, 100.00, 1700, 0, 95.60,
    98.40, 10.50, 4.30, 313.00, 62.40,
    NULL, 17.20, NULL, 67, 52.30,
    66.30, 64.10, 73.40, 86.30, 61.40, 71.70, 62.40, 49.80,
    5.96, 7.12, 29.00, 0.76, 65.00,
    'Tropikal', 'UTC-4', 'Parlamenter Anayasal Monarsi'),

-- 146. Seyşeller
('Seyseller', 'SYC', 'Dogu Afrika', 'Afrika', 2023, 98347, 'Victoria', 'Ingilizce, Fransizca, Seselwa', 'Seysel Rupisi',
    1673000000.00, 17025.60, 2.80, 3.00, 2.70, 590.00, 980.00,
    73.30, 11.40, 5.10, 2.10, 3.60, 98.00, 14.00,
    95.90, 96.40, 95.50, 78.10, 18.80, 4.80, 20.20,
    5.40, 1.10, 88.40, 96.30, 55.00, 82.00,
    79.00, 186.30, 100.00, 526, 0, 93.80,
    55.30, 6.00, 5.20, 386.00, 57.40,
    32.10, 25.30, 4.60, 63, 50.20,
    61.40, 58.30, 65.20, 75.30, 83.60, 69.60, 57.40, 44.20,
    6.16, 6.01, 48.00, 0.74, 70.00,
    'Tropikal', 'UTC+4', 'Baskanci Cumhuriyet'),

-- 147. Palau
('Palau', 'PLW', 'Mikronezya', 'Okyanusya', 2023, 18094, 'Ngerulmud', 'Ingilizce, Palau Dili', 'Amerikan Dolari',
    299000000.00, 16542.86, 3.40, 1.70, 2.90, NULL, 1250.00,
    73.50, 14.80, 11.40, 1.50, 4.80, 99.00, 55.30,
    99.50, 98.70, 96.50, 87.60, 46.60, 8.50, 13.20,
    11.80, 7.70, 87.60, 99.50, 50.00, 91.00,
    36.00, 133.80, 99.50, 125, 0, 95.30,
    46.70, 2.10, 9.40, 343.00, 63.80,
    NULL, NULL, NULL, 60, 45.60,
    59.70, 56.40, 65.10, 80.20, 81.40, 66.80, 63.80, 42.30,
    NULL, NULL, NULL, NULL, 61.00,
    'Tropikal', 'UTC+9', 'Baskanci Cumhuriyet'),

-- 148. Antigua ve Barbuda
('Antigua ve Barbuda', 'ATG', 'Karayipler', 'Amerika', 2023, 97929, 'Saint John\'s', 'Ingilizce', 'Dogu Karayip Dolari',
    1810000000.00, 18481.50, 9.40, 11.00, 2.10, 750.00, 1420.00,
    77.00, 5.10, 4.50, 2.80, 3.80, 98.00, 18.90,
    99.00, 98.10, 92.60, 86.20, 23.50, 3.50, 16.40,
    5.40, 4.40, 22.30, 96.70, 50.00, 86.00,
    76.00, 194.30, 97.90, 1170, 0, 91.30,
    114.20, 10.60, 4.70, 222.00, 60.40,
    NULL, 18.30, NULL, 65, 49.80,
    63.10, 63.40, 69.70, 78.60, 62.80, 68.70, 60.40, 46.80,
    5.83, 7.16, 40.00, 0.73, 59.00,
    'Tropikal', 'UTC-4', 'Parlamenter Anayasal Monarsi'),

-- 149. Niue
('Niue', 'NIU', 'Polinezya', 'Okyanusya', 2023, 1626, 'Alofi', 'Ingilizce, Niuean', 'Yeni Zelanda Dolari',
    17000000.00, 10523.37, 2.40, 12.00, 2.90, NULL, 750.00,
    74.20, 7.80, 14.20, 2.00, 5.10, 99.00, 50.00,
    95.00, 100.00, 98.00, 89.00, 35.00, 6.90, 11.00,
    4.20, 5.00, 71.70, 98.90, 40.00, 95.00,
    86.00, 101.00, 100.00, 120, 0, 97.00,
    12.10, 0.00, 3.50, NULL, 69.10,
    NULL, 10.00, NULL, 60, 52.30,
    61.10, 56.40, 67.40, 79.20, 72.60, 67.30, 69.10, 48.40,
    NULL, NULL, NULL, NULL, NULL,
    'Tropikal', 'UTC-11', 'Serbest Birliktelik'),

-- 150. Tuvalu
('Tuvalu', 'TUV', 'Polinezya', 'Okyanusya', 2023, 11792, 'Funafuti', 'Ingilizce, Tuvaluanca', 'Tuvalu Dolari',
    58000000.00, 4928.76, 2.00, 6.50, 2.60, NULL, 370.00,
    67.20, 23.30, 16.50, 1.20, 5.60, 84.00, 51.60,
    99.00, 95.00, 86.00, 59.00, 16.00, 7.50, 12.00,
    1.20, 0.90, 33.30, 99.00, 30.00, 98.00,
    49.00, 80.00, 99.50, 8, 0, 93.30,
    19.60, 3.80, 2.70, 120.00, 61.30,
    39.10, 26.30, 14.60, 60, 42.70,
    53.10, 41.30, 56.40, 67.10, 52.80, 59.60, 61.30, 41.80,
    NULL, NULL, NULL, NULL, NULL,
    'Tropikal', 'UTC+12', 'Parlamenter Anayasal Monarsi');