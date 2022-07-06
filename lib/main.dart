import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:less_is_flutter/personal_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PersonalCard(),
    );
  }
}
