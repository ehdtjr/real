import 'dart:convert';
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'data.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('http://ajsv.dothome.co.kr/test/restapiPage.php'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    // 만약 서버가 ok 응답을 반환하면, JSON을 파싱합니다.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    // 만약 응답이 ok가 아니라면 오류를 출력
    throw Exception('Failed to load album');
  }
}

class riview_test extends StatefulWidget {

  @override
  State<riview_test> createState() => _ListTileAppState();
}

class _ListTileAppState extends State<riview_test> {
  late Future<Album> futureAlbum; //late : non-nullable 변수의 초기화를 나중에 할 수 있게해줌

  @override
  void initState(){
    super.initState();
    futureAlbum=fetchAlbum();//futureAlbum이 빌드시 fetchAlbum()으로 초기화 됨
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:FutureBuilder<Album>(
          future: futureAlbum,//작업하고하자는 future -> fetchAlbum()의 리턴값
          builder: (context,snapshot){ //snapshot 정보를 통해 비동기 처리 결과를 어들 수 있음
            if (snapshot.hasData) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(snapshot.data!.http_status),
                    Text(snapshot.data!.data1),
                    Text(snapshot.data!.data2),
                    Text(snapshot.data!.data3[2]),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child:Text('${snapshot.error}'),
              );
            }

            // By default, show a loading spinner.
            //data를 아직 받아 오지 못했을때 실행되는 부분
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}


