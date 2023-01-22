import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAP"),
      ),
      body: Map(),
    );
  }
}

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(48.661717, 6.155612),
        zoom: 16,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'OpenStreetMap contributors',
          onSourceTapped: null,
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            FlowerMarker(
              flower: Flower(
                name: "Érable champêtre",
                image: "assets/Acer campestre.jpg",
                location: LatLng(48.661717, 6.155612),
              ),
              width: 30,
              height: 30,
            ),
            FlowerMarker(
              flower: Flower(
                name: "Érable champêtre",
                image: "assets/Vinca minor.jpg",
                location: LatLng(48.660717, 6.155612),
              ),
              width: 30,
              height: 30,
            ),
            FlowerMarker(
              flower: Flower(
                name: "Érable champêtre",
                image: "assets/Prunus avium.jpeg",
                location: LatLng(48.661717, 6.156612),
              ),
              width: 30,
              height: 30,
            ),
          ],
        )
      ],
    );
  }
}

class Flower {
  final String name;
  final String image;
  final LatLng location;

  Flower({
    required this.name,
    required this.image,
    required this.location,
  });
}

class FlowerMarker extends Marker {
  final Flower flower;

  FlowerMarker({
    required this.flower,
    required double width,
    required double height,
  }) : super(
          width: width,
          height: height,
          point: flower.location,
          builder: (ctx) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(flower.image, fit: BoxFit.cover)),
          ),
        );
}
