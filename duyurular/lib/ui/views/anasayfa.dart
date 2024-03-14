import 'package:duyurular/ui/views/haberler_goster.dart';
import 'package:duyurular/ui/views/renkler.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final List<String> duyurular = [
    "Duyuru 1",
    "Duyuru 2",
    "Duyuru 3",
    "Duyuru 4",
  ];

  @override
  Widget build(BuildContext context) {
    final _pageControler = PageController(viewportFraction: 0.9);
    return Scaffold(
      backgroundColor: Color(0xFFE9ECF2),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: PageView(
                controller: _pageControler,
                children: duyurular.map((duyuru) {
                  return GestureDetector(
                    onTap: () {
                      print(duyuru);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey[200],
                        child: Text(duyuru),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      color: yaziRenk1,
                      iconSize: 35,
                      onPressed: () {
                        _pageControler.previousPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.linear);
                      },
                      icon: Icon(Icons.arrow_circle_left_rounded)),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HaberlerGoster()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: yaziRenk2,
                        minimumSize:
                        Size(250, 25), // Genişlik ve yükseklik değerleri
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "icons/newspaper.png",
                            color: yaziRenk1,
                            width: 25,
                            height: 25,
                          ),
                          Text(
                            "Haberler",
                            style: TextStyle(color: yaziRenk1),
                          ),
                        ],
                      )),
                  IconButton(
                      color: yaziRenk1,
                      iconSize: 35,
                      onPressed: () {
                        _pageControler.nextPage(
                            duration: Duration(seconds: 1),
                            curve: Curves.linear);
                      },
                      icon: Icon(Icons.arrow_circle_right)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Size Nasıl Yardımcı Olabiliriz?",
                    style: TextStyle(
                        color: yaziRenk3, fontSize: 15, fontFamily: "Agbalumo"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 125,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: yaziRenk2),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "icons/bolumler.png",
                                    color: yaziRenk1,
                                    width: 25,
                                    height: 25,
                                  ),
                                  Text(
                                    "Bölümler",
                                    style: TextStyle(color: yaziRenk1),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 125,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: yaziRenk2),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "icons/stethoscope.png",
                                    color: yaziRenk1,
                                    width: 25,
                                    height: 25,
                                  ),
                                  Text(
                                    "Doktorlar",
                                    style: TextStyle(color: yaziRenk1),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: 125,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: yaziRenk2),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "icons/hemsire.png",
                                    color: yaziRenk1,
                                    width: 25,
                                    height: 25,
                                  ),
                                  Text(
                                    "Hemşireler",
                                    style: TextStyle(color: yaziRenk1),
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: yaziRenk2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "icons/apartment.png",
                                  color: yaziRenk1,
                                  width: 20,
                                  height: 20,
                                ),
                                Text(
                                  "Hastaneler",
                                  style: TextStyle(color: yaziRenk1),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: yaziRenk2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "icons/prize.png",
                                  color: yaziRenk1,
                                  width: 20,
                                  height: 20,
                                ),
                                Text(
                                  "Hizmetler",
                                  style: TextStyle(color: yaziRenk1),
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: SizedBox(
                      width: 250,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Kayıt Ol",
                          style: TextStyle(
                              color: yaziRenk2,
                              fontSize: 18,
                              fontFamily: "IndieFlower"),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: yaziRenk4,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                            color: yaziRenk4,
                            fontSize: 18,
                            fontFamily: "Agbalumo"),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        side: BorderSide(color: yaziRenk4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
