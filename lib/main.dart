import 'package:flutter/material.dart';

import 'package:less_is_flutter/views/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingPage(),
    );
  }
}
