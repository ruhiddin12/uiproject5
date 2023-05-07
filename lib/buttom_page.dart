import 'package:flutter/material.dart';
import 'package:uiproject5/homepage.dart';
import 'package:uiproject5/second_page.dart';

class ButtomPage extends StatefulWidget {
  static const String id = 'buttom_page';

  const ButtomPage({Key? key}) : super(key: key);

  @override
  State<ButtomPage> createState() => _ButtomPageState();
}

class _ButtomPageState extends State<ButtomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "BUTTOM PAGE",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomePage.id);
              },
              child: const Text(
                "Home Page",
                style: TextStyle(
                    backgroundColor: Colors.blueGrey,
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, SecondPage.id);
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.teal),
              ),
              child: const Text(
                "Second Page",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print("Outline Buttom tugmasi bosildi.");
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey,
                side: const BorderSide(width: 3, color: Colors.black),
              ),
              child: const Text(
                "Outline Buttom",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
            IconButton(
                onPressed: () {
                  print("Like bosildi  va layklar soni ortib bormoqda.");
                },
                icon: const Icon(
                  Icons.favorite_border_sharp,
                  color: Colors.red,
                  size: 50,
                ),
            ),

          ],
        ),
      ),
    );
  }
}
