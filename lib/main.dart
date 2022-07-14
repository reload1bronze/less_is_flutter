import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ShoppingPage(),
      home: Scaffold(
        body: Container(
          child: Center(
            child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.gamepad,
                  color: Colors.redAccent,
                  size: 100,
                ),
                onPressed: () {
                  print("Pressed");
                }),
          ),
        ),
      ),
    );
  }
}
