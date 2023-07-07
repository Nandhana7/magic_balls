import 'dart:math';

import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Ball(),
    );
  }
}
class Magic_ball extends StatefulWidget {
  const Magic_ball({Key? key}) : super(key: key);

  @override
  State<Magic_ball> createState() => _Magic_ballState();
}

class _Magic_ballState extends State<Magic_ball> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          setState(() {
          });
          ballnumber = Random().nextInt(4)+1;
        },
        child: Image.asset("images/ball${ballnumber}.png"),
      ),
    );
  }
}

