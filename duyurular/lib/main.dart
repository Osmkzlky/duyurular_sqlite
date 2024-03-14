import 'package:duyurular/ui/cubit/detay_sayfa_cubit.dart';
import 'package:duyurular/ui/cubit/haberler_goster_cubit.dart';
import 'package:duyurular/ui/cubit/kayit_sayfas%C4%B1_cubit.dart';
import 'package:duyurular/ui/views/anasayfa.dart';
import 'package:duyurular/ui/views/bottom_navigator.dart';
import 'package:duyurular/ui/views/duyuru_goster.dart';
import 'package:duyurular/ui/views/haberler_goster.dart';
import 'package:duyurular/ui/views/kayit_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>KayitSayfaCubit()),
        BlocProvider(create: (context)=>HaberlerGosterCubit()),
        BlocProvider(create: (context)=>DetaySayfaCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BottomNavigator(),
      ),
    );
  }
}

