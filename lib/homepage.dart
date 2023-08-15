import 'package:flutter/material.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/services.dart';
import 'package:remotecontrol/AddRemote.dart';
import 'package:remotecontrol/RemoteLists.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 // String _selectedCamera = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.white,
          width: MediaQuery.of(context).size.width / 2,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              for (int i = 0; i <remotesList.length; i++)
                remotesList[i]
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: Text(
            'Remote Controller',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(child: Text('Add Remote')),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Container(
          padding: EdgeInsets.all(20),
          child: FloatingActionButton(
            backgroundColor: Color(0xFF3d3d44),
            child: Icon(Icons.add),
            onPressed: () {
              _openQRScanner(context);
            },
          ),
        ),
      ),
    );
  }

  void _openQRScanner(BuildContext context) async {
    String? qrResult = await scanQRCode();
    if (qrResult != null) {

      print('QR Result: $qrResult');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddRemoteScreen(idString: qrResult),
        ),
      );

    }
  }

  Future<String?> scanQRCode() async {
    try {

      final ScanResult scanResult = await BarcodeScanner.scan();
      return scanResult.rawContent;
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        return 'Camera permission denied';
      } else {
        return 'Error: ${e.message}';
      }
    } on FormatException {
      return 'User cancelled the scan';
    } catch (e) {
      return 'Error: $e';
    }
  }

  // Widget _buildRemoteWidget() {
  //   if (_selectedCamera.isEmpty) {
  //     return Container(
  //       decoration: BoxDecoration(
  //         gradient: LinearGradient(
  //           colors: [
  //             Color(0xFF3d3d44),
  //             Color(0xFF8e8e96),
  //             Color(0xFF3d3d44),
  //           ],
  //           begin: Alignment.topCenter,
  //           end: Alignment.bottomCenter,
  //         ),
  //       ),
  //       child: Column(
  //         children: [
  //           SizedBox(height: AppBar().preferredSize.height),
  //           RowOfButtons([0, 1, 2]),
  //           SizedBox(height: 10),
  //           RowOfButtons([3, 4, 5]),
  //           SizedBox(height: 10),
  //           RowOfButtons([6, 7, 8]),
  //         ],
  //       ),
  //     );
  //   } else {
  //     return Container(
  //       decoration: BoxDecoration(
  //         gradient: LinearGradient(
  //           colors: [
  //             Color(0xFF3d3d44),
  //             Color(0xFF8e8e96),
  //             Color(0xFF3d3d44),
  //           ],
  //           begin: Alignment.topCenter,
  //           end: Alignment.bottomCenter,
  //         ),
  //       ),
  //       child: Column(
  //         children: [
  //           SizedBox(height: AppBar().preferredSize.height),
  //           RowOfButtons(List.generate(6, (index) => index)),
  //         ],
  //       ),
  //     );
  //   }
  // }
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
                  style: TextStyle(color: Colors.white, fontSize: 25),
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
        return Color(0xFF7B7B7E);
      case 2:
        return Color(0xFF7B7B7E);
      default:
        return Color(0xFF7B7B7E);
    }
  }
}

class CircularButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Widget child;

  CircularButton(
      {this.onPressed, required this.backgroundColor, required this.child});

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
