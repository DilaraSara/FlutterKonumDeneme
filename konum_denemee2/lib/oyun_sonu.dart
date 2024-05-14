import 'package:konum_denemee/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

class OyunSonu extends StatefulWidget {
  const OyunSonu({super.key});

  @override
  State<OyunSonu> createState() => _OyunSonuState();
}

class _OyunSonuState extends State<OyunSonu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oyun'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SonucEkrani()));
            }, child: const Text("Can Hakkınız Bitmiştir")),
          ],
        ),
      ),
    );
  }
}