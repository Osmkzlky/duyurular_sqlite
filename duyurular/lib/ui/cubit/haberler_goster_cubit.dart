import 'package:duyurular/data/entity/haberler.dart';
import 'package:duyurular/data/repository/haberlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HaberlerGosterCubit extends Cubit<List<Haberler>>{

  HaberlerGosterCubit():super(<Haberler>[]);

  var hrepo=HaberlerDaoRepository();

  Future<void> haberlerYukle() async {
    var liste=await hrepo.haberlerYukle();
    emit(liste);
  }

  Future<void> sil (int haber_id) async{
    await hrepo.sil(haber_id);
    await hrepo.haberlerYukle();
  }

}