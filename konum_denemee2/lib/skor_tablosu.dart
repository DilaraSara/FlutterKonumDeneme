import 'package:flutter/material.dart';

class SkorEkrani extends StatefulWidget {
  const SkorEkrani({super.key});

  @override
  State<SkorEkrani> createState() => _SkorEkraniState();
}

class _SkorEkraniState extends State<SkorEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skor Tablosu'),
      ),
      body: Container(
        color: Colors.red, // Sayfa rengi kırmızı
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '🐱',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 20),

              DataTable(
                columns: const [
                  DataColumn(label: Text('Sıra')),
                  DataColumn(label: Text('İsim')),
                  DataColumn(label: Text('Skor')),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('1')),
                    DataCell(Text('Ahmet')),
                    DataCell(Text('100')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2')),
                    DataCell(Text('Mehmet')),
                    DataCell(Text('90')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('3')),
                    DataCell(Text('Ayşe')),
                    DataCell(Text('80')),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
