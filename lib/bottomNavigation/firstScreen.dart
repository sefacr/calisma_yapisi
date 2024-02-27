import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Birinci Sayfa", style: TextStyle(fontSize: 30, color: Colors.black54),),
    );
  }
}