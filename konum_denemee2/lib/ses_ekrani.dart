import 'package:flutter/material.dart';

class SesEkrani extends StatefulWidget {
  const SesEkrani({super.key});

  @override
  State<SesEkrani> createState() => _SesEkraniState();
}

class _SesEkraniState extends State<SesEkrani> {
  double _soundLevel = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sound Settings'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '🐱',
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 20),
              Text(
                'Sound Level: ${(_soundLevel * 100).round()}%',
                style: const TextStyle(fontSize: 20),
              ),
              Slider(
                value: _soundLevel,
                onChanged: (newValue) {
                  setState(() {
                    _soundLevel = newValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
