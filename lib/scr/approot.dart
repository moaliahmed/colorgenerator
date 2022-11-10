import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/colorscreen.dart';
import '../screens/loginscreen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      scaffoldBackgroundColor: Color(0xff3d9ad9)
      ),
      home: ColorScreen(),
    );
  }
}
