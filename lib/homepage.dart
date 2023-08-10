import 'package:flutter/material.dart';
import 'dart:math';

class CameraControlApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Camera Remote Control'),
        ),
        body: Center(
          child: CircularButtonLayout(),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){

          },
        ),
      ),
    );
  }
}

class CircularButtonLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final center = MediaQuery.of(context).size.width/2.75; // Calculate center of screen

    return Stack(
      alignment: Alignment.center,
      children: [
        for (int i = 1; i <= 6; i++)
          Positioned(
            top: center - 100 * sin(2 * pi * i / 6),
            left: center + 100 * cos(2 * pi * i / 6),
            child: CameraButton(number: i),
          ),
      ],
    );
  }
}

class CameraButton extends StatelessWidget {
  final int number;

  CameraButton({required this.number});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(30),
      ),
      onPressed: () {
        // Implement your button press logic here, e.g., send command to camera
        print('Button $number pressed');
      },
      child: Text('Button $number'),
    );
  }
}

void main() {
  runApp(CameraControlApp());
}
