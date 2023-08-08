import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'riview_data.dart';
import 'riview_write.dart';

class riview_recent extends StatelessWidget {
  const riview_recent({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListTileApp(),
      ),
    );
  }
}
