CREATE OR REPLACE PACKAGE DWH.PKG_OSOS_ACTIVE_ENDEX AUTHID CURRENT_USER
IS
/************************************************************************************************
   NAME:       PKG_OSOS_ACTIVE_ENDEX
   PURPOSE:    Günlük endex ve tüketim

   REVISIONS:
    Ver         Date          Authors                                     Description
   ---------  ----------    ----------------------------------           -----------------------
   1.0        25-10-2017    MURAT ONCUL                                   1. Created this package.
**************************************************************************************************

Paket içersindeki prosedürler:
------------------------------

  PROCEDURE PRC_TMP_RDD_DAILYENDEXES
    - Golden Gate üzerinden alınan datalar birleştiriliyor.
  PROCEDURE PRC_ARIL_ACTIVE_ENDEX
    - Aril uygulamasının endeksleri alınıyor.
  PROCEDURE PRC_HAYEN_ACTIVE_ENDEX
    - Hayen uygulamasının endeksleri alınıyor.
  PROCEDURE PRC_LUNA_ACTIVE_ENDEX
    - Luna uygulamasının endeksleri alınıyor.
  PROCEDURE PRC_UNION_ACTIVE_ENDEX
    - Uygulamalara ait olan endeks bilgileri birleştiriliyor..
  PROCEDURE PRC_BACK_ENDEX
    - Endekslerin bir önceki değeleri bulunuyor.
  PROCEDURE PRC_CONSUMPTION_ACTIVE_ENDEX
    - Endeksler üzerinden tüketim hesaplanıyor.
  PROCEDURE PRC_TRUNCATE_PARTITION
    - Tablo üzerindeki Aril ve Luna partitionları siliniyor..
  PROCEDURE PRC_F_MRR_DAILY_ENDEXES
    - Endeks tüketimleri ve endeks değerleri tabloya basılıyor.
  PROCEDURE PRC_K2_SUBSCRIBER_LIST
    - K2 abone listesi alınıyor.
  PROCEDURE PRC_K2_SUBSCRIBER_CONSUMPTION
    - K2 abonelerinin tüketimleri hesaplanıp tabloya basılıyor.
  PROCEDURE PRC_AGRICULTURAL_IRRIGATION
    - Tarımsal tüketimler hesaplanıyor.
  PROCEDURE PRC_AGRICULTURAL_IRRIGATION_D
    - Tarımsal tüketimi hesaplanan abone sayıları belirleniyor.
  PROCEDURE PRC_CONSUMPTION_DAILY
    - YKP den alınan saatlik tüketim verileri günlük tüketime dönüştürülüyor.
  PROCEDURE PRC_CONSUMPTION_MONTHLY
    - Hesaplanan günlük tüketim verileri aylık tüketime dönüştürülüyor.
  PROCEDURE PRC_AGGRI_CROSSTAB
    - Tarımsal tüketim verileri crosstab e dönüştürülüyor.
  PROCEDURE PRC_F_MRR_LIGTHING_DAILY
  , - Aydınlatma tüketimleri hesaplanıp tabloya yazılıyor.
*/

  PROCEDURE PRC_TMP_RDD_DAILYENDEXES;
  PROCEDURE PRC_ARIL_ACTIVE_ENDEX;
  PROCEDURE PRC_HAYEN_ACTIVE_ENDEX;
  PROCEDURE PRC_LUNA_ACTIVE_ENDEX;
  PROCEDURE PRC_UNION_ACTIVE_ENDEX;
  PROCEDURE PRC_BACK_ENDEX;
  PROCEDURE PRC_CONSUMPTION_ACTIVE_ENDEX;
  PROCEDURE PRC_TRUNCATE_PARTITION;
  PROCEDURE PRC_F_MRR_DAILY_ENDEXES;
  PROCEDURE PRC_K2_SUBSCRIBER_LIST;
  PROCEDURE PRC_K2_SUBSCRIBER_CONSUMPTION;
  PROCEDURE PRC_AGRICULTURAL_IRRIGATION;
  PROCEDURE PRC_AGRICULTURAL_IRRIGATION_D;
  PROCEDURE PRC_CONSUMPTION_DAILY;
  PROCEDURE PRC_CONSUMPTION_MONTHLY;
  PROCEDURE PRC_AGGRI_CROSSTAB;
  PROCEDURE PRC_F_MRR_LIGTHING_DAILY;

END PKG_OSOS_ACTIVE_ENDEX;
/