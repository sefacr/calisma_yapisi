import 'package:calisma_yapisi/gameScreen.dart';
import 'package:calisma_yapisi/person.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int sayac = 0;
  @override
  Widget build(BuildContext context) {
    print("build methodu çalıştı");
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç :  $sayac"),
            ElevatedButton(onPressed: () {
              setState(() {
                sayac++;
              });
            }, child: const Text("Button")
            ),
            ElevatedButton(
              onPressed: (){
                var user1 = Person(name: "Ali", age: 23, height: 1.84, materialStatus: false);
                Navigator.push(context, MaterialPageRoute(builder: (context) => GameScreen(person: user1,)));
              }, 
              child: const Text("Başla")
            ),
          ],
        ),
      ),
    );
  }
}