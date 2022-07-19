import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:less_is_flutter/profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ShoppingPage(),
      // home: Home(),
      home: ListViewPage(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(14),
                    padding: EdgeInsets.all(14),
                    height: 150,
                    color: Colors.blue,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Text('hello'),
                        Positioned(
                          right: 5,
                          top: 5,
                          child: SizedOverflowBox(
                            size: Size(300, 300),
                            child: Container(
                              width: 50,
                              height: 100,
                              color: Color(0xdd123456),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
