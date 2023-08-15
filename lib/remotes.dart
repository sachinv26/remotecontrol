import 'package:flutter/material.dart';
import 'homepage.dart';

class RemoteScreenD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildRemoteWidget() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3d3d44),
            Color(0xFF8e8e96),
            Color(0xFF3d3d44),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button A pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'A',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button B pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button C pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button D pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'D',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Remote 2'),
      ),
      body: _buildRemoteWidget(),
    );
  }
}

class RemoteScreenF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildRemoteWidget() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3d3d44),
            Color(0xFF8e8e96),
            Color(0xFF3d3d44),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button A pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'A',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button B pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button C pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button D pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'D',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button E pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'E',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button F pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'F',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Remote 3'),
      ),
      body: _buildRemoteWidget(),
    );
  }
}

class RemoteScreenI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget _buildRemoteWidget() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3d3d44),
            Color(0xFF8e8e96),
            Color(0xFF3d3d44),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height),
          RowOfButtons([0, 1, 2]),
          SizedBox(height: 10),
          RowOfButtons([3, 4, 5]),
          SizedBox(height: 10),
          RowOfButtons([6, 7, 8]),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Remote 1'),
      ),
      body: _buildRemoteWidget(),
    );
  }
}



class RemoteScreenL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildRemoteWidget() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3d3d44),
            Color(0xFF8e8e96),
            Color(0xFF3d3d44),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button A pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'A',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button B pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'B',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button C pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'C',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button D pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'D',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button E pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'E',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button F pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'F',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button G pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'G',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button H pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'H',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button I pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'I',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton(
                onPressed: () {
                  print('Letter button J pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'J',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button K pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'K',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(width: 10),
              CircularButton(
                onPressed: () {
                  print('Letter button L pressed');
                },
                backgroundColor: Color(0xFF7B7B7E),
                child: Text(
                  'L',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Remote 4'),
      ),
      body: _buildRemoteWidget(),
    );
  }
}

class RemoteScreenP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildRemoteWidget() => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3d3d44),
            Color(0xFF8e8e96),
            Color(0xFF3d3d44),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: AppBar().preferredSize.height),
          RowOfButtons([0, 1, 2, 3]),
          SizedBox(height: 10),
          RowOfButtons([4, 5, 6, 7]),
          SizedBox(height: 10),
          RowOfButtons([8, 9, 10, 11]),
          SizedBox(height: 10),
          RowOfButtons([12,13,14,15]),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Remote P' ),
      ),
      body: _buildRemoteWidget(),
    );
  }
}