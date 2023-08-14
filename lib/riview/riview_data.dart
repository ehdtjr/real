import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'riview_write.dart';

class ListTileApp extends StatefulWidget {

  @override
  State<ListTileApp> createState() => _ListTileAppState();
}

class _ListTileAppState extends State<ListTileApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: ListTileExample(),
    );
  }
}

class ListTileExample extends StatelessWidget {
  final List<String> profile = ['A', 'B', 'C', 'D', 'E','F','G','H','I'];
  final List<String> name = ['adsfwer', 'Aish', 'Ayan', 'Ben', 'Bob','Bob','Bob','Bob','Bob'];
  final List<String> content = [
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
    '여기 진짜 너무 맛있었어요 ㅠㅠㅠㅠ 홍게도 정말 많이 나와서 친구 4명이서 배부르게 먹었어요! 여기 그냥 분식이라기 보다 해산물을 제대로 먹을 수 있는 맛집이라서 정말 추천드려요 ㅎㅎ 짱!!',
  ];
  final List<int> rating =[1,2,3,4,5,1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: profile.length,
          itemBuilder: (BuildContext context, int i) {
            return Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.person_outline,color: Colors.white,),backgroundColor: Colors.lightBlue[200],),
                title: Row(
                  children: [
                    Text('${name[i]}',style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                        width: 20
                    ),
                    RatingBar( //아래 RatingBar 함수 따로 선언
                      rating: rating[i],
                      ratingCount: 10,
                    ),
                    SizedBox(
                        width: 20
                    ),
                    Text('2023.07.17',style: TextStyle(fontSize: 12),),
                  ],
                ),
                subtitle: Text('${content[i]}'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true, //subtitle의 길이가 3줄이 안되어도 3줄 칸 확보
              ),
            );
          },
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final int rating;
  final double size;
  final int ratingCount;
  RatingBar({required this.rating, required this.ratingCount, this.size = 18});

  @override
  Widget build(BuildContext context) {
    List<Widget> _starList = [];

    int realNumber = rating.floor(); //버림

    for (int i = 0; i < 5; i++) {
      if (i < realNumber) {
        _starList.add(Icon(Icons.star, color: Colors.lightBlue[200], size: size));
      } else {
        _starList.add(Icon(Icons.star, color: Colors.grey, size: size));
      }
    }

    return Row(

      children: _starList,
    );
  }
}
