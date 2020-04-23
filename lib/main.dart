import 'package:flutter/material.dart';
import 'package:tracker/screens/2meal_page.dart';
import 'package:tracker/screens/preStart_page.dart';
import 'package:tracker/screens/timer.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BMICalculatorState();
  }
}

class BMICalculatorState extends State<BMICalculator> {
  int _selectedPage = 0;
  final _pageOptions = [
    PreStart(),
    StartPage(),
    MyApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF2a3950),
        scaffoldBackgroundColor: Color(0xFF2a3950),
      ),
      home: Scaffold(
        body: _pageOptions[_selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF2a3950),
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.timer), title: Text('Timer')),
            BottomNavigationBarItem(
                icon: Icon(Icons.donut_large), title: Text('Plan')),
            BottomNavigationBarItem(
                icon: Icon(Icons.filter_none), title: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
