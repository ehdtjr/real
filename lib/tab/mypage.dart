import 'package:flutter/material.dart';
import '../riview/riview_write.dart';
import '../test.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Center(
          child: FormScreen(title: 'riview_write',),
        ),
      ),
    );
  }
}
