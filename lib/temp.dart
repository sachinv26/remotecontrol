import 'package:flutter/material.dart';

class PhoneDialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueGrey,
          title: Text(
            'Camera Controller',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF007AFF), Color(0xFF34C759), Color(0xFFFF9500)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: AppBar().preferredSize.height), // Ensure space for AppBar
              RowOfButtons([0, 1, 2]),
              SizedBox(height: 10),
              RowOfButtons([3, 4, 5]),
              SizedBox(height: 10),
              RowOfButtons([6, 7, 8]),
            ],
          ),
        ),
      ),
    );
  }
}

class RowOfButtons extends StatelessWidget {
  final List<int> buttonIndices;

  RowOfButtons(this.buttonIndices);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i in buttonIndices)
            Expanded(
              child: CircularButton(
                onPressed: () {
                  print('Letter button ${String.fromCharCode(65 + i)} pressed');
                },
                backgroundColor: _getButtonColor(i),
                child: Text(
                  String.fromCharCode(65 + i),
                  style: TextStyle(color: Colors.white,fontSize: 25),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Color _getButtonColor(int number) {
    switch (number % 3) {
      case 1:
        return Color(0xFF007AFF);
      case 2:
        return Color(0xFF34C759);
      default:
        return Color(0xFFFF9500);
    }
  }
}

class CircularButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Widget child;

  CircularButton({this.onPressed, required this.backgroundColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        gradient: LinearGradient(
          colors: [_getLighterColor(backgroundColor), backgroundColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0),
          shape: CircleBorder(),
        ),
        child: child,
      ),
    );
  }

  Color _getLighterColor(Color color) {
    return Color.fromARGB(
      color.alpha,
      color.red + 20,
      color.green + 20,
      color.blue + 20,
    );
  }
}

void main() {
  runApp(PhoneDialScreen());
}
