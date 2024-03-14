import 'package:duyurular/ui/views/anasayfa.dart';
import 'package:duyurular/ui/views/hakimizda.dart';
import 'package:duyurular/ui/views/ilac_takibi.dart';
import 'package:duyurular/ui/views/renkler.dart';
import 'package:duyurular/ui/views/su_hatirlatici.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int secilenIndeks=0;
  var sayfalar=[const Anasayfa(),const SuHatirlatici(),const IlacTakibi(),const Hakimizda()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Kanuni Sultan Sülayman Hastanesi",style:TextStyle(color: yaziRenk1,fontFamily:"Roboto"),),
      ),
      body: sayfalar[secilenIndeks],
      bottomNavigationBar:BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label:"Anasayfa",),
          BottomNavigationBarItem(icon: Icon(Icons.water_drop_outlined,),label:"Su Hatırlatıcısı"),
          BottomNavigationBarItem(icon: Icon(Icons.medical_information,),label:"İlaç Takibi"),
          BottomNavigationBarItem(icon: Icon(Icons.handshake,), label: "Hakımızda",),
        ],
        currentIndex: secilenIndeks,
        selectedItemColor: yaziRenk4,
        unselectedItemColor: yaziRenk1,
        onTap: (indeks){
          setState(() {
            secilenIndeks=indeks;
          });
        },
      ),
    );
  }
}
