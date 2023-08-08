import 'package:flutter/material.dart';
import '../riview/riview_write.dart';
import '../test.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa6feff),
      body: Center(
        child: Center(
          child: riview_write(),
        ),
      ),
    );
  }
}
