import 'package:flutter/material.dart';
import 'package:uiproject5/buttom_page.dart';
import 'package:uiproject5/homepage.dart';
import 'package:uiproject5/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SecondPage.id:(context)=>const SecondPage(),
        ButtomPage.id:(context)=>const ButtomPage(),
      },
    );
  }
}
