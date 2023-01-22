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
      appBar: AppBar(
        title: Text("Rank"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
              plantsFind().map((plant) => CardPlant(plant: plant)).toList(),
        ),
      ),
    );
  }
}

class CardPlant extends StatelessWidget {
  final Plants plant;

  const CardPlant({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => Dialog(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(plant.image),
                          Text(plant.name),
                          Text(plant.description),
                        ],
                      ),
                    ),
                  ));
        },
        child: Card(
          child: Center(child: Image.asset(plant.image)),
        ),
      ),
    );
  }
}
