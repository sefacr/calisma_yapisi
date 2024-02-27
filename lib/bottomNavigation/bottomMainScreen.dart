import 'package:calisma_yapisi/bottomNavigation/firstScreen.dart';
import 'package:calisma_yapisi/bottomNavigation/secondScreen.dart';
import 'package:calisma_yapisi/bottomNavigation/thirdScreen.dart';
import 'package:flutter/material.dart';

class BottomNavigationMainScreen extends StatefulWidget {
  const BottomNavigationMainScreen({super.key});

  @override
  State<BottomNavigationMainScreen> createState() => _BottomNavigationMainScreenState();
}

class _BottomNavigationMainScreenState extends State<BottomNavigationMainScreen> {

  int selectedPage = 0;
  var Screens = [const FirstScreen(), const SecondScreen(), const ThirdScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Main Page", style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold),),backgroundColor: Colors.black,),
      body: Screens[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined), label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined), label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined), label: "Third"),
        ],
        currentIndex: selectedPage,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.amber,
        unselectedFontSize: 15,
        unselectedIconTheme: const IconThemeData(size: 27),
        selectedItemColor: Colors.blueAccent,
        selectedFontSize: 20,
        selectedIconTheme: const IconThemeData(color: Colors.blueAccent, size: 30),
        onTap: (index){
          setState(() {
            selectedPage = index;
          });
        },
        ),
    );
  }
}