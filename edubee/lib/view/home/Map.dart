import 'package:edubee/main.dart';
import 'package:edubee/scan/plants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

List<Marker> marker = [
  FlowerMarker(
    flower: getPlant("Érable champêtre"),
  ),
  FlowerMarker(
    flower: getPlant("bruyère commune callune"),
  ),
  FlowerMarker(
    flower: getPlant("Févier d'Amérique"),
  ),
];

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    if (scoreParty.objectif() == 0) {
      marker;
      scoreParty.setObjectif();
    }

    var score = scoreParty.score;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Carte")),
        actions: [Center(child: Text("$score pts   "))],
        leading: const Text(""),
      ),
      body: Map(),
    );
  }
}

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (_) {
      int score = scoreParty.score;
      int objectifs = scoreParty.objectif();
      if (objectifs == 0) {
        marker;
        objectifs = scoreParty.objectif();
      }

      if (score == objectifs) {
        return const Center(
          child: EndGame(),
        );
      } else {
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
              markers: marker,
            )
          ],
        );
      }
    });
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
                              const SizedBox(height: 10),
                              Text(flower.description)
                            ],
                          )),
                    );
                  },
                );
              })),
        );
}

class EndGame extends StatelessWidget {
  const EndGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logo_app/edubee.png"),
            const Text("Bravo !"),
            const Text("Vous avez trouvé toutes les fleurs"),
            const Text("Vous pouvez recommencer"),
            ElevatedButton(
              onPressed: () {
                scoreParty.resetScore();
                for (var plant in getPlantsUsed()) {
                  plant.isFound = false;
                }
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: const Text("Recommencer"),
            )
          ],
        ),
      ),
    );
  }
}
