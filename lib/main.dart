import 'package:flutter/material.dart';
import 'package:dashboard_enseignant/Auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
