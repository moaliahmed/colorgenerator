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
  void initState() {
    hexcolor = fun();
  }

  @override
  var clor;
  List<Color>? hexcolor;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             
              width: double.infinity,
              child: Column(
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      ColorComponents(clor: hexcolor![0]),
                      ColorComponents(clor: hexcolor![1]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColorComponents(clor: hexcolor![2]),
                      ColorComponents(clor: hexcolor![3]),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ColorComponents(clor: hexcolor![4]),
                      ColorComponents(clor: hexcolor![5])
                    ],
                  ),
                  
                ],
              ),
            ),
           
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    hexcolor = fun();
                  });
                },
                child: Text('Rondam',style: TextStyle(fontSize: 32),))
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
