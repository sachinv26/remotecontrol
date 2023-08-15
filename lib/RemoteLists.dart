import 'package:flutter/material.dart';
import 'package:remotecontrol/remotes.dart';

List<MyRemote> remotesList=[];

class MyRemote extends StatelessWidget {
  final String name;
  final String Id;
   MyRemote({Key? key, required this.name, required this.Id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CurrRemote(Id),
          ),
        );
      },
      child: ListTile(
        title: Text(name),

      ),
    );
  }
}





Widget CurrRemote(String remote) {
  if (remote == "D") return RemoteScreenD();
  if (remote == "F") return RemoteScreenF();
  if (remote == "I") return RemoteScreenI();

  if (remote == "L") return RemoteScreenL();

  if (remote == "P") return RemoteScreenP();


  return RemoteScreenD();
}
