import 'package:colorgenerator/components/colorcomponent.dart';
import 'package:colorgenerator/models/colorlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math';

class ColorScreen extends StatefulWidget {
  @override
  State<ColorScreen> createState() => _ColorScreenState();

  
}

class _ColorScreenState extends State<ColorScreen> {
  @override
 var clor;
 List<Color> ?hexcolor;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Row(
                
                children: [
                  ColorComponents(clor: hexcolor![0]),
                
                ],
              ),
            ),
            Text('${hexcolor ?[0]}',style: TextStyle(fontSize: 32),),
            ElevatedButton(onPressed: () {
              setState(() {
                hexcolor=fun();
               
                 //clor=Color(int.parse(fun()));
              });
            }, child: Text('Rondam'))
          ],
        ),
      ),
    );
  }
}

  fun() {
  final random = new Random();

  var colr = ColorList[random.nextInt(ColorList.length)];
  print('hello$colr');
  return colr;
}
