import 'package:flutter/material.dart';
import 'package:less_is_flutter/list_view_item.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView Page',
        ),
      ),
      body: Form(
          child: ListView(
        padding: const EdgeInsets.all(14.0),
        shrinkWrap: true,
        children: [
          Container(
            color: Colors.redAccent,
            height: 100,
            width: 10,
            child: Center(child: Text('hello')),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.amberAccent,
            height: 100,
            width: 10,
            child: const ListViewItem(),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.yellowAccent,
            height: 100,
            width: 10,
            child: Center(child: Text('hello')),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.greenAccent,
            height: 100,
            width: 10,
            child: Center(child: Text('hello')),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.blueAccent,
            height: 100,
            width: 10,
            child: Center(child: Text('hello')),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.purpleAccent,
            height: 100,
            width: 10,
            child: Center(child: Text('hello')),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}
