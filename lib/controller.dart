import 'package:get/get.dart';

import 'package:less_is_flutter/model.dart';

class Controller extends GetxController {
  final person = Person().obs;

  void updateInfo() {
    person.update((val) {
      val?.age++;
      val?.name = 'Coding Chef';
    });
  }
}
