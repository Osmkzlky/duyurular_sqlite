import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class DosyaEklemeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resim Ekleme Sayfası")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Resim seçme işlemini başlat
            final result = await FilePicker.platform.pickFiles(
              type: FileType.image, // Sadece resim dosyalarını filtrele
            );

            // Kullanıcı resim seçtiyse
            if (result != null) {
              // Seçilen dosyanın yolu
              String? path = result.files.single.path;
              if (path != null) {
                // Seçilen dosyanın yolu ile işlem yapabilirsiniz
                print('Seçilen resmin yolu: $path');
              }
            }
          },
          child: Text("Resim Seç"),
        ),
      ),
    );
  }
}
