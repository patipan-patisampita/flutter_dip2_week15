import 'package:flutter/material.dart';

import 'screens/contact.dart';
import 'screens/first_screen.dart';
import 'screens/home.dart';
import 'screens/second_screen.dart';
import 'screens/statefull.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //create constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.indigo),
      title: "Flutter App",
      //home: FirstScreen(),
      initialRoute: FirstScreen.id,
      routes: {
        //'/': (context) => FirstScreen(),
        FirstScreen.id:(context) => FirstScreen(),
        //'/contact': (context) => Contact(),
        Contact.id:(context) => Contact(),
        HomeScreen.id:(context) => HomeScreen(),
        SecondScreen.id:(context) => SecondScreen(),
      },
    );
  }
}
