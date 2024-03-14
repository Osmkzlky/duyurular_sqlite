import 'package:duyurular/data/entity/haberler.dart';
import 'package:duyurular/data/sqlite/veritabani_yardimcisi.dart';

class HaberlerDaoRepository{

  Future<void> kaydet(String haberler_baslik,String haberler_aciklama,String haberler_tarih,String haberler_saat) async{
    var db=await VeritabaniYardimcisi.veritabaniErisim();
    var yeniHaber=Map<String,dynamic>();
    yeniHaber["haberler_baslik"]=haberler_baslik;
    yeniHaber["haberler_aciklama"]=haberler_aciklama;
    yeniHaber["haberler_tarih"]=haberler_tarih;
    yeniHaber["haberler_saat"]=haberler_saat;
    await db.insert("haberler", yeniHaber);

  }

  Future<void>guncelle (int haberler_id,String haberler_baslik,String haberler_aciklama,String haberler_tarih,String haberler_saat) async{
    var db=await VeritabaniYardimcisi.veritabaniErisim();
    var guncellenenHaber=Map<String,dynamic>();
    guncellenenHaber["haberler_baslik"]=haberler_baslik;
    guncellenenHaber["haberler_aciklama"]=haberler_aciklama;
    guncellenenHaber["haberler_tarih"]=haberler_tarih;
    guncellenenHaber["haberler_saat"]=haberler_saat;
    await db.update("haberler", guncellenenHaber, where: "haberler_id= ?",whereArgs: [haberler_id]);
  }

  Future<void> sil (int haberler_id) async{
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    await db.delete("haberler", where: "haberler_id= ?", whereArgs: [haberler_id]);

  }


  Future<List<Haberler>> haberlerYukle() async {
    var db=await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps = await db.rawQuery("SELECT * FROM haberler");

    return List.generate(maps.length, (index) {
      var satir=maps[index];
      return Haberler(
          haberler_id: satir["haberler_id"],
          haberler_baslik: satir["haberler_baslik"],
          haberler_aciklama: satir["haberler_aciklama"],
          haberler_tarih: satir["haberler_tarih"],
          haberler_saat: satir["haberler_saat"]);
    });
  }


}