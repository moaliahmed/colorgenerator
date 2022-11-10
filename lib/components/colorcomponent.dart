import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorComponents extends StatelessWidget {
   ColorComponents({this.clor=Colors.black});
Color clor;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: clor,   borderRadius: BorderRadius.circular(999)),
            ),
    );
  }
}