import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:konum_denemee/sonuc_ekrani.dart';


class HaritaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Türkiye Şehir Haritası',
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(39.925533, 32.866287); // Türkiye'nin merkezi

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Set<Marker> _createMarkers() {
    // Şehirler ve koordinatları
    List<Marker> markers = [];
    markers.add(Marker(
      markerId: MarkerId('ankara'),
      position: LatLng(39.9334, 32.8597),
      infoWindow: InfoWindow(title: 'Ankara'),
    ));
    markers.add(Marker(
      markerId: MarkerId('istanbul'),
      position: LatLng(41.0082, 28.9784),
      infoWindow: InfoWindow(title: 'İstanbul'),
    ));
    markers.add(Marker(
      markerId: MarkerId('zonguldak'),
      position: LatLng(41.459081, 31.7589611),
      infoWindow: InfoWindow(title: 'Zonguldak'),
    ));
    // Diğer şehirler buraya eklenebilir
    return markers.toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Türkiye Haritası'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 5.0,
            ),
            markers: _createMarkers(),
            onTap: (LatLng latLng) {
              //
            },
          ),
          Positioned(
            bottom: 16,
            right: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SonucEkrani()));
              },
              child: Text('Oyunu Bitir'),
            ),
          ),
        ],
      ),
    );
  }
}
