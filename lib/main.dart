import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffCA035C),
          appBar: AppBar(
            title: Text(
              'Click to roll',
              style: TextStyle(color: Color(0xffCA035C)),
            ),
            backgroundColor: Colors.white,
          ),
          body: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Dice(),
          ),
          Expanded(
            child: Dice(),
          )
        ],
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int number = roll();

  static int roll() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: FlatButton(
        key: ValueKey<int>(number),
        child: Image.asset('images/dice$number.png'),
        onPressed: () {
          setState(() {
            number = roll();
          });
        },
      ),
    );
  }
}
