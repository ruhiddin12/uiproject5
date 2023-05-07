import 'package:flutter/material.dart';
import 'package:uiproject5/buttom_page.dart';
import 'package:uiproject5/homepage.dart';

class SecondPage extends StatefulWidget {
  static const String id = 'second_page';

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Second Page",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, ButtomPage.id);
              },
              icon: const Icon(
                Icons.arrow_forward,
                size: 45,
                color: Colors.black,
              ))
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 45,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            Image(
                height: 380,
                width: 500,
                fit: BoxFit.cover,
                image: AssetImage("assets/images/image3.jpeg")),
            Image(
                height: 392,
                width: 500,
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://mobimg.b-cdn.net/v3/fetch/08/08815b0c9deb693921bf3e1cfe155d29.jpeg?w=1470&r=0.5625"))
          ],
        ),
      ),
    );
  }
}
