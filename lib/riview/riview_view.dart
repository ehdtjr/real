import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/riview/riview_write.dart';
import 'riview_data.dart';
import 'riview_grade.dart';
import 'riview_recent.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 2,
    vsync: this,
    initialIndex: 0,

    // 탭 변경 애니메이션 시간
    animationDuration: const Duration(milliseconds: 00),
  );

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _tabBar(),
          _Expanded(),
        ],
      ),
      floatingActionButton: FloatingActionButton( //로그인 작성 버튼
        onPressed: () {
          Navigator.of(context).push( //push: 다음 화면을 쌓겠다는 의미
            MaterialPageRoute(builder: (BuildContext context) => login(), //materialpageroute: navigator가 이동할 경로 지정
            ),
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(Icons.edit),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _tabBar() {
    return Container(
      height: 60,
      child: TabBar(
        controller: tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,

        labelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 16,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.black,

        onTap: (index) {},
        tabs: const [
          Tab(text: "평점순"),
          Tab(text: "최신순"),
        ],
      ),
    );
  }

  Widget _Expanded() {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: const [
          riview_grade(),
          riview_recent(),
        ],
      ),
    );
  }
}
