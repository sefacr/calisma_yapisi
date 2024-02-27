import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("İkinci Sayfa", style: TextStyle(fontSize: 30, color: Colors.black54),),
    );
  }
}