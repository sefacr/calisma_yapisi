import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Üçüncü Sayfa", style: TextStyle(fontSize: 30, color: Colors.black54),),
    );
  }
}