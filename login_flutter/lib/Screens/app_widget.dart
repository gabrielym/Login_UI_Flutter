import 'package:flutter/material.dart';
import '../Screens/Login/tela_login.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        bottomAppBarColor: Colors.teal[800],
      ),
      home: TelaLogin(),
    );
  }
}
