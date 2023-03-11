import 'package:flutter/material.dart';

import 'Notepad.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  
  @override
  void initState() {  //change the state according code given in it
    super.initState();
   _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds:2), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Notebad()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // ignore: prefer_const_constructors
          child: Image.asset("lib/assets/notepad.png"),
          // Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.freepnglogos.c"),
        ),
      ),
    );
  }
}
