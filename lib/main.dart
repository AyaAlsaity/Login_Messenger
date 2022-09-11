import 'package:flutter/material.dart';
import 'package:flutter_application_2/Login_Desgin.dart';
import 'package:flutter_application_2/Messenger.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Messenger(),
    );
    
  }
}

