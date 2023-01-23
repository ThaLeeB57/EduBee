import 'package:edubee/scan/plants.dart';
import 'package:flutter/material.dart';
import 'package:edubee/view/HomePage.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

ScoreParty scoreParty = ScoreParty();

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ScoreParty {
  int _score = 0;
  get score => _score;
  int scoreFinal = 0;

  void changeScore(int score) {
    _score += score;
  }

  void setObjectif() {
    scoreFinal = 0;
    int somme = 0;
    getPlantsUsed().forEach((element) {
      somme += element.nectar;
    });
    scoreFinal = somme;
  }

  void resetScore() {
    _score = 0;
  }

  int objectif() {
    return scoreFinal;
  }
}
