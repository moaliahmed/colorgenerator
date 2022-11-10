import 'dart:async';

import 'package:colorgenerator/screens/colorscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    
    super.initState();
    Timer(Duration(seconds: 3),() {
       Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => ColorScreen()));
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Image.network('https://m.media-amazon.com/images/I/61T6sk68RhL.png')),
          CircularProgressIndicator(
            color: Colors.red,
            backgroundColor: Colors.amber,
         )

        ],
      ),
    );
  }
}