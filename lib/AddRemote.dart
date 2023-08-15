import 'package:flutter/material.dart';
import 'package:remotecontrol/RemoteLists.dart';

class AddRemoteScreen extends StatefulWidget {
 final String idString;
  AddRemoteScreen({required this.idString});
  @override
  _AddRemoteScreenState createState() => _AddRemoteScreenState();
}

class _AddRemoteScreenState extends State<AddRemoteScreen> {
  TextEditingController _nameController = TextEditingController();

  String lastChar(String id){
    String lastCharacter = id.substring(id.length - 1);
    return lastCharacter;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Remote'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Enter Name of Your Remote',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {

                final enteredName = _nameController.text;
                setState(() {
                  remotesList.add(MyRemote(Id: lastChar(widget.idString),name: enteredName,));
                });

                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

