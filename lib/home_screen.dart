import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var number1 = 1;
  var number2 = 4;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 400,
                child: Center(
                    child: Text(
                  "Dicee",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                height: 200,
                width: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset("images/dice${number1}.png"),
                    ),
                    Container(
                        height: 150,
                        width: 150,
                        child: Image.asset("images/dice${number2}.png")),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 400,
                child: Center(
                    child: Text(
                  "Lets Roll",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ]),
      ),
      onTap: () {
        print('Screen Tapped');
        var randomNumber1 = Random().nextInt(5) + 1;
        print(randomNumber1);
        setState(() {
          number1 = randomNumber1;
        });
        var randomNumber2 = Random().nextInt(5) + 1;
        print(randomNumber1);
        setState(() {
          number2 = randomNumber2;
        });
      },
    );
  }
}
