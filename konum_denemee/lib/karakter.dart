import 'package:flutter/material.dart';

class SolImage extends StatefulWidget {
  @override
  _SolImageState createState() => _SolImageState();
}

class _SolImageState extends State<SolImage> {
  bool _isImageVisible = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isImageVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      left: _isImageVisible ? 250 : 0,
      child:Center(
        child: Container(
        width: 200,
        height: 350,
        child: Image.asset(
          'resimler/karakteriki.png', // Görüntü dosyasının yolunu belirtin
          fit: BoxFit.cover, // Görüntünün boyutunu ayarlamak için
          ),
        ),
      ),
    );
  }
}
