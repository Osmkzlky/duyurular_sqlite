import 'package:duyurular/data/entity/haberler.dart';
import 'package:duyurular/ui/cubit/haberler_goster_cubit.dart';
import 'package:duyurular/ui/views/detay_sayfa.dart';
import 'package:duyurular/ui/views/kayit_sayfa.dart';
import 'package:duyurular/ui/views/renkler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HaberlerGoster extends StatefulWidget {
  const HaberlerGoster({super.key});

  @override
  State<HaberlerGoster> createState() => _HaberlerGosterState();
}

class _HaberlerGosterState extends State<HaberlerGoster> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<HaberlerGosterCubit>().haberlerYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9ECF2),
      appBar: AppBar(
        backgroundColor: Color(0xFFE9ECF2),
        title: Text("Hastameniz ile İlgili Haberler"),
      ),
      body: BlocBuilder<HaberlerGosterCubit, List<Haberler>>(
        builder: (context, haberlerListesi) {
          if (haberlerListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: haberlerListesi.length,
              itemBuilder: (context, indeks) {
                var haber = haberlerListesi[indeks];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetaySayfa(haber)))
                        .then((value) {
                      context.read<HaberlerGosterCubit>().haberlerYukle();
                    });
                  },
                  child: Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  haber.haberler_saat,
                                  style: TextStyle(fontFamily: "Agbalumo"),
                                ),
                                Text(
                                  haber.haberler_tarih,
                                  style: TextStyle(fontFamily: "Agbalumo"),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 250,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  haber.haberler_baslik,
                                  style: TextStyle(fontFamily: "Agbalumo"),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          "${haber.haberler_baslik} adlı haber silinsin mi"),
                                      action: SnackBarAction(
                                        label: "Evet",
                                        onPressed: () {
                                          context
                                              .read<HaberlerGosterCubit>()
                                              .sil(haber.haberler_id)
                                              .then((value) {
                                            context
                                                .read<HaberlerGosterCubit>()
                                                .haberlerYukle();
                                          });
                                        },
                                      ),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.clear,
                                  color: yaziRenk1,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(); // Burada bir widget döndürmelisiniz
          }
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: yaziRenk1,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const KayitSayfa())).then((value) {
                context.read<HaberlerGosterCubit>().haberlerYukle();
              });
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16), // İstenilen boşluk
          FloatingActionButton(
            backgroundColor: Colors.red, // Örnek olarak kırmızı renk
            onPressed: () {
              // İkinci butona tıklanınca yapılacak işlemler
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
