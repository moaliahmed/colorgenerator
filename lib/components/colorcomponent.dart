import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ColorComponents extends StatelessWidget {
  ColorComponents({required this.clor});
  var clor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 120,
          decoration: BoxDecoration(
            color: clor,
            borderRadius: BorderRadius.circular(990),
          ),
        ),
        Text('$clor',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
