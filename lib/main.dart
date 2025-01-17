import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1 ;
  int rightDice = 1 ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDice = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDice = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$rightDice.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}



