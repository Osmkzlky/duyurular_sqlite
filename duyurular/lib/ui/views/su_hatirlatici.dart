import 'package:flutter/material.dart';

class SuHatirlatici extends StatefulWidget {
  const SuHatirlatici({super.key});

  @override
  State<SuHatirlatici> createState() => _SuHatirlaticiState();
}

class _SuHatirlaticiState extends State<SuHatirlatici> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Su Hatırlatıcısı"),
      ),
    );
  }
}
