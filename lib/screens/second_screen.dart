import 'package:flutter/material.dart';

import 'contact.dart';
import 'first_screen.dart';

class SecondScreen extends StatelessWidget {
  //String name;
  static String id="/second";//Nameing Routes

  //const SecondScreen({Key? key}) : super(key: key);
  //SecondScreen({required this.name});//named Constructor

  @override
  Widget build(BuildContext context) {
    // if(ModalRoute.of(context)!.settings.arguments != null){
    //   final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    //   print(arguments['name']);
    //   print(arguments['Founder']);
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("print"),
          onPressed: (){
            Navigator.pop(context,true);
            //Navigator.pop(context);
            //Navigator.push(context, MaterialPageRoute(builder: (context) => Contact()));
            //print(name);
          },
        ),
      ),
    );
  }
}
