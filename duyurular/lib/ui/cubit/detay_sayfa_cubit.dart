import 'package:duyurular/data/repository/haberlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetaySayfaCubit extends Cubit<void>{
  DetaySayfaCubit():super(0);

  var hrepo=HaberlerDaoRepository();

  Future<void>guncelle (int haber_id,String duyuru_baslik,String duyuru_aciklama,String duyuru_tarih,String haberler_saat) async{
    await hrepo.guncelle(haber_id, duyuru_baslik, duyuru_aciklama, duyuru_tarih, haberler_saat);
  }

}