import 'package:flutter/material.dart';
import 'package:konum_denemee/giris_ekrani.dart';
import 'package:konum_denemee/harita_deneme.dart';
import 'package:konum_denemee/harita_sayfa.dart';
import 'package:konum_denemee/karakter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HaritaDeneme(),
    );
  }
}


