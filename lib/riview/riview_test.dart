import 'dart:convert';
import 'dart:async';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/model_riview.dart';

Future<List<model_riview>> fetchRiview() async {
  int i=1;
  final response = await http
      .get(Uri.parse('http://ajsv.dothome.co.kr/test/restapiPage.php?value='+'${i}'));

  if (response.statusCode == 200) {

    var responseBody = utf8.decode(response.bodyBytes);
    final json = "[${responseBody}]";  //responseBody는 {키:값},{키:값}형태
    List list = (jsonDecode(json)as List<dynamic>);
    return list.map<model_riview>((map) => model_riview.fromJson(map)).toList();

    //return Post.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class riview_test extends StatefulWidget {

  @override
  State<riview_test> createState() => _ListTileAppState();
}

class _ListTileAppState extends State<riview_test> {
  late Future<List<model_riview>> futureriview; //late : non-nullable 변수의 초기화를 나중에 할 수 있게해줌

  @override
  void initState(){
    super.initState();
    futureriview=fetchRiview();//futureAlbum이 빌드시 fetchAlbum()으로 초기화 됨
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:FutureBuilder(
          future: futureriview,//작업하고하자는 future -> fetchAlbum()의 리턴값
          builder: (context,snapshot){ //snapshot 정보를 통해 비동기 처리 결과를 어들 수 있음
            if (snapshot.hasData) {
              List<model_riview> _riview = snapshot.data as List<model_riview>;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(_riview[0].http_status),
                    Text(_riview[0].loc_code),
                    Text(_riview[0].name),
                    Text(_riview[0].regDate),
                    Text(_riview[0].rating.toString()),
                    Text(_riview[0].content),
                    Text(_riview[0].imglink),

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


