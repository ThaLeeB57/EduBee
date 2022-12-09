import 'package:edubee/view/home/Home.dart';
import 'package:edubee/view/scan/Scan.dart';
import 'package:edubee/view/score/Score.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeIndex(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          allowImplicitScrolling: false,
          onPageChanged: (int index) {
            _changeIndex(index);
          },
          children: const <Widget>[Home(), Scan(), Rank()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Ranking',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          print(index);
          _changeIndex(index);
        },
      ),
    );
  }
}
