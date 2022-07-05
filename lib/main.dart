import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:less_is_flutter/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Controller controller = Get.put(Controller());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('less is flutter'),
        ),
        body: Center(
          child: Column(
            children: [
              GetBuilder<Controller>(
                init: Controller(),
                builder: (_) => Text(
                  // '${controller.x}',
                  '${Get.find<Controller>().x}',
                  style:
                      const TextStyle(fontSize: 24, color: Colors.pinkAccent),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  // controller.increment();
                  Get.find<Controller>().increment();
                },
                child: const Text('Add number'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
