import 'package:flutter/material.dart';
import 'package:flutter_app/tab/map.dart';
import 'package:flutter_app/tab/review.dart';
import 'package:flutter_app/tab/friend.dart';
import 'package:flutter_app/tab/mypage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        '/map':(context)=>Map(),
        '/review':(context)=>Review(),
        '/friend':(context)=>Friend(),
        '/mypage':(context)=>MyPage(),
        '/':(context)=> Map(),
      },
      initialRoute: '/',
    );
  }
}

