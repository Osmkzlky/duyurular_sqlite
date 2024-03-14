import 'package:duyurular/data/repository/haberlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KayitSayfaCubit extends Cubit<void>{
  KayitSayfaCubit():super(0);

  var hrepo=HaberlerDaoRepository();

  Future<void> kaydet(String duyuru_baslik,String duyuru_aciklama,String duyuru_tarih,String haberler_saat) async{
    await hrepo.kaydet(duyuru_baslik, duyuru_aciklama, duyuru_tarih, haberler_saat);
  }

}