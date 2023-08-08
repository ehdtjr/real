import 'package:flutter/material.dart';

import 'riview_write.dart';

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

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
  final List<String> name = ['Aby', 'Aish', 'Ayan', 'Ben', 'Bob','Bob','Bob','Bob','Bob'];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        child: ListView.builder(
          itemCount: profile.length,
          itemBuilder: (BuildContext context, int i) {
            return Card(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(child: Text('${profile[i]}')),
                title: Row(
                  children: [
                    Text('${name[i]}'),
                    SizedBox(
                        width: 20
                    ),
                    Text('* * * * *'),
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
