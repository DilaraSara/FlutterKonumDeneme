import 'package:konum_denemee/giris_ekrani.dart';
import 'package:konum_denemee/skor_tablosu.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonuç'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Skorunuz: --',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SkorEkrani()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                ),
                child: const Text(
                  'Yüksek Skorlar',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GirisEkrani()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                ),
                child: const Text(
                  'Yeniden Başlayın',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

