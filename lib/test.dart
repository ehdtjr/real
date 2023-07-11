import 'package:flutter/material.dart';

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

    /// 탭 변경 애니메이션 시간
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
        children: [
          Container(
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: const Text(
              'Tab1',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(                        //class명 넣으면 됨 ex)Myapp()
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: const Text(
              'Tab2',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
