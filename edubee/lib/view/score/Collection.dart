import 'package:edubee/scan/plants.dart';
import 'package:flutter/material.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(child: Text("Collection")),
        ),
        body: Builder(builder: (context) {
          List<Plants> plants = plantsFind();
          if (plants.isEmpty) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/logo/bee.png"),
                const Text(
                    "Vous n'avez pas encore de plantes dans votre collection"),
                const Text("Scannez une plante pour l'ajouter"),
              ],
            );
          } else {
            return ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  return CardPlant(plant: plants[index]);
                });
          }
        }));
  }
}

class CardPlant extends StatelessWidget {
  final Plants plant;

  const CardPlant({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
          child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              plant.image,
              width: 100,
              height: 100,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant.name.length > 15
                      ? plant.name.substring(0, 15) + "..."
                      : plant.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(plant.name),
                              content: Text(plant.description),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Fermer"))
                              ],
                            );
                          });
                    },
                    child: Text("Voir la fiche"))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
