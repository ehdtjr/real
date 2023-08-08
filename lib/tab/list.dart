import 'package:flutter/material.dart';
import 'package:flutter_app/Area/seoul.dart';
import 'package:flutter_app/Area/incheon.dart';
import '../riview/riview_view.dart';
import '../Firstview.dart';

class List extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffa6feff),
      appBar: AppBar(
          title:const Text('Treveat',style: TextStyle(color: Color(0xff69E2E3))),
          centerTitle: true),

      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).push( //push: 다음 화면을 쌓겠다는 의미
              MaterialPageRoute(builder: (BuildContext context) => Seoul(), //materialpageroute: navigator가 이동할 경로 지정
              ),
            );
          },
              child: Text('서울')),

          ElevatedButton(onPressed: (){

            Navigator.of(context).push( //push: 다음 화면을 쌓겠다는 의미
              MaterialPageRoute(builder: (BuildContext context) => Incheon(), //materialpageroute: navigator가 이동할 경로 지정
              ),
            );
          },
              child: Text('인천')),

          ElevatedButton(onPressed: (){

            Navigator.of(context).push( //push: 다음 화면을 쌓겠다는 의미
              MaterialPageRoute(builder: (BuildContext context) => TabBarScreen(), //materialpageroute: navigator가 이동할 경로 지정
              ),
            );
          },
              child: Text('전체 리뷰 보기')),
        ],
      )),
    );
  }
}