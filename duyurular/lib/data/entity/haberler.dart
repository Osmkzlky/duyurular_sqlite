class Haberler{
  int haberler_id;
  String haberler_baslik;
  String haberler_aciklama;
  String haberler_tarih;
  String haberler_saat;

  Haberler(
      { required this.haberler_id,
        required this.haberler_baslik,
        required this.haberler_aciklama,
        required this.haberler_tarih,
        required this.haberler_saat});
}