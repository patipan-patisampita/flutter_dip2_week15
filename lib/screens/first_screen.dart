import 'package:flutter/material.dart';

import 'contact.dart';
import 'home.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  static String id = "/first";
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _index = 0;
  List pages =[
    HomeScreen(),
    SecondScreen(),
    Contact(),
  ];

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
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          print(index);
          setState(() {
            _index = index;
          });
        },
        currentIndex:  _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          //BottomNavigationBarItem(icon: Icon(Icons.assignment),label: "First"),
          BottomNavigationBarItem(icon: Icon(Icons.today),label: "Second"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Contact"),
          //BottomNavigationBarItem(icon: Icon(Icons.call),label: "StatefulScreen"),
        ],
      ),
      // appBar: AppBar(
      //   title: Text("First Screen"),
      // ),
      body: pages[_index],
    );
  }
}
