import 'package:flutter/material.dart';

import 'contact.dart';
import 'home.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  static String id = "/first";
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Android"),
              accountEmail: Text("android@gmail.com"),
              currentAccountPicture:CircleAvatar (
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              title: Text("First Screen"),
              leading: Icon(Icons.assignment),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Second Screen"),
              leading: Icon(Icons.today),
              onTap: () {
                Navigator.pushNamed(context, SecondScreen.id);
              },
            ),
            ListTile(
              title: Text("Contact US"),
              leading: Icon(Icons.call),
              onTap: () {
                Navigator.pushNamed(context, Contact.id);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Screen"),
          onPressed: () async {
            bool status = await Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
            print(status);
            //Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
            //Navigator.pushNamed(context, "/contact");
            //Navigator.pushReplacementNamed(context, '/contact');
            //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SecondScreen(name:"Elon Mask")));
            //Navigator.pushNamed(context, Contact.id);
            //Navigator.pushNamed(context, SecondScreen.id);
            // Navigator.pushNamed(context, SecondScreen.id,arguments: {
            //   'name':'Mark Zakerberg',
            //   'Founder':'Facebook Company'
            // });
          },
        ),
      ),
    );
  }
}
