import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:konum_denemee/ses_ekrani.dart';
import 'package:konum_denemee/skor_tablosu.dart';


class AyarlarEkrani extends StatefulWidget {
  const AyarlarEkrani({super.key});

  @override
  State<AyarlarEkrani> createState() => _AyarlarEkraniState();
}

class _AyarlarEkraniState extends State<AyarlarEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayarlar'),
      ),
      body: Container(
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('🐱',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SesEkrani()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                ),
                child: const Text(
                  'Ses',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SkorEkrani()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                ),
                child: const Text(
                  'Skor Tablosu',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );;
  }
}
