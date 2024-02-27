
import 'package:calisma_yapisi/resultScreen.dart';
import 'package:flutter/material.dart';
import 'package:calisma_yapisi/person.dart';

class GameScreen extends StatefulWidget {
  Person person;
  GameScreen({super.key, required this.person});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  Future<bool> backAction(BuildContext context) async {
    print("Navigation geri yapıldı");
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Screen"),
        leading: IconButton(onPressed: () {
          print("Appbardaki back buton tıklandı");
          Navigator.pop(context);
        }, icon: const Icon(Icons.ac_unit_sharp),),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("${widget.person.name} - ${widget.person.age} - ${widget.person.height} - ${widget.person.materialStatus}"),
            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultScreen()));
            }, 
              child: const Text("Bitti")
            )
          ],
        ),
      ),
    );
  }
}