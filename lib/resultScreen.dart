import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sonuç Ekranı"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text("Geri Dön")
            ),
            ElevatedButton(
              onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            }, 
              child: const Text("Ana Sayfaya Geri Dön")
            )
          ],
        ),
      ),
    );
  }
}