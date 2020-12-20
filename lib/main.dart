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
  Random random = new Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              padding: const EdgeInsets.fromLTRB(18.0, 0.0, 9.0, 0.0),
              onPressed: () {
                setRandomNumberOnDices(true);
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: const EdgeInsets.fromLTRB(9.0, 0.0, 18.0, 0.0),
              onPressed: () {
                setRandomNumberOnDices(false);
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void setRandomNumberOnDices(bool isLeft){
    setState(() {
      leftDiceNumber = random.nextInt(6) + 1;
      rightDiceNumber = random.nextInt(6) + 1;

      if (isLeft) print('Left button got pressed.');
      else print('Right button got pressed.');
    });
  }
}
