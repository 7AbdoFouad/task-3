import 'package:first_app/splash_Screen.dart';

import './Notepad.dart';
// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'Title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
          accentColor: Colors.green.shade700,
          brightness: Brightness.light,
          errorColor: Colors.red,
          backgroundColor: Colors.blueGrey,
        ),
      ),
      //push,,replace,remove==>in navigator revidion
      home: const splash(),
    );
  }
}
