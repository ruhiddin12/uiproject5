import 'package:flutter/material.dart';
import 'package:uiproject5/second_page.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions:  [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SecondPage.id);
              },
              icon: const Icon(
                Icons.arrow_forward,
                size: 45,
                color: Colors.black,
              )),
        ],
        leading: const Icon(
          Icons.home,
          size: 45,
          color: Colors.black,
        ),
        title: const Text(
          "HOME PAGE",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/image1.jpg"),
            Image.network(
              "https://i.natgeofe.com/n/5a0875f5-b6d8-4d9e-b544-8023f6d83904/63704.jpg",
            ),
            Image.asset("assets/images/image2.jpg"),
          ],
        ),
      ),
    );
  }
}
