
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Game Screen"),),
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