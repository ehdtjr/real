import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffa6feff),
        appBar: AppBar(
            title: const Text('Treveat',
                style: TextStyle(color: Color(0xff69E2E3))),
            centerTitle: true),
        body: Center(
          child: Text('Map'),
        ));
  }
}
