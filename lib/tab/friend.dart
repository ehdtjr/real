import 'package:flutter/material.dart';
import 'package:flutter_app/menu_bottom.dart';

class Friend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('트레빗 친구', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,)),
      ),
      backgroundColor: Color(0xffa6feff),
      body: Center(
        child: Text('Page3'),
      ),
    );
  }
}
