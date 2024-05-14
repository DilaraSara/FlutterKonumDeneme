import 'package:flutter/material.dart';
import 'package:konum_denemee/ayarlar_ekrani.dart';
import 'package:konum_denemee/harita_deneme.dart';



class GirisEkrani extends StatefulWidget {
  const GirisEkrani({super.key});

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş Ekranı'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '🐱',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HaritaDeneme()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                ),
                child: const Text(
                  'Oyuna Başla',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AyarlarEkrani()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 60),
                ),
                child: const Text(
                  'Ayarlar',
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
