import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {

  const DiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dice",),
          backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Slot(),
      ),
    );
  }
}
class Slot extends StatefulWidget {

  Slot({Key? key}) : super(key: key);

  @override
  State<Slot> createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  var dicenumber = Random().nextInt(6);

  void setDicenumber(){
    
    setState(() {
      dicenumber = Random().nextInt(6);

    });
    debugPrint("$dicenumber");
    
  }

  Expanded createExpanded(int Dicenumber){
    return  Expanded(
            child: TextButton(
              onPressed: setDicenumber,
              child: Image.asset('images/$Dicenumber.png')),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        children: [
          createExpanded(dicenumber),
        ]
        ),
    );
  }
}