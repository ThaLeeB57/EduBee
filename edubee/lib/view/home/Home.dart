import 'package:edubee/scan/plants.dart';
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
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            FlowerMarker(
              flower: getPlant("Érable champêtre"),
            ),
            FlowerMarker(
              flower: getPlant("Vinca mino"),
            ),
            FlowerMarker(
              flower: getPlant("Prunus avium"),
            ),
          ],
        )
      ],
    );
  }
}

class FlowerMarker extends Marker {
  final Plants flower;

  FlowerMarker({
    required this.flower,
  }) : super(
          width: 30,
          height: 30,
          point: flower.location,
          builder: (ctx) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.transparent,
              ),
              child: Builder(builder: (context) {
                return IconButton(
                  iconSize: 30,
                  padding: EdgeInsets.zero,
                  icon: Builder(
                      builder: (context) => flower.isFound
                          ? Icon(Icons.check_circle, color: Colors.green)
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(flower.image,
                                  fit: BoxFit.cover))),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: Text(flower.name),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(flower.image),
                              Text(flower.description)
                            ],
                          )),
                    );
                  },
                );
              })),
        );
}
