import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('부모 위젯 빌드');
    return MaterialApp(
      // home: ShoppingPage(),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return ListViewItem(index);
                    }),
              ),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewItem extends StatefulWidget {
  final int index;

  ListViewItem(this.index, {Key? key}) : super(key: key);

  @override
  State<ListViewItem> createState() => _ListViewItemState();
}

class _ListViewItemState extends State<ListViewItem> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    print('자식 위젯 빌드 ${widget.index}');
    return Column(
      children: [
        Text(isSwitched.toString()),
        ListTile(
          title: new Text('gogo'),
          trailing: new Switch(
            value: isSwitched,
            activeColor: Colors.pink,
            activeTrackColor: Colors.pinkAccent,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
