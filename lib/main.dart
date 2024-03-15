import 'package:calisma_yapisi/bottomNavigation/bottomMainScreen.dart';
import 'package:calisma_yapisi/mainScreen.dart';
import 'package:calisma_yapisi/user_interaction/userInteractionPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const UserInteractionPage(),
    );
  }
}
