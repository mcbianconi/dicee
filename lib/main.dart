import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
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
            child: FlatButton(
              child: Image.asset('images/dice3.png'),
              onPressed: () {
                print("clicouuuu");
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice5.png'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
