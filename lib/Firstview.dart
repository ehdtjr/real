import 'package:flutter/material.dart';
import 'package:flutter_app/tab/map.dart';
import 'package:flutter_app/tab/review.dart';
import 'package:flutter_app/tab/friend.dart';
import 'package:flutter_app/tab/mypage.dart';

<<<<<<< HEAD
class Firstview extends StatefulWidget {
  @override
  State<Firstview> createState() => _TestViewState();
}

class _TestViewState extends State<Firstview>
=======
class TestView extends StatefulWidget {
  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView>
>>>>>>> ae358f2e8baa8abbf20c4b35e9bc613ff6f17140
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(
            () => setState(() => _selectedIndex = _tabController.index));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: [
          Map(),
          Container( //class명 넣으면 됨 ex)Myapp()
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: const Text(
              'Review',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Friend(),
          MyPage(),
        ],
<<<<<<< HEAD

=======
>>>>>>> ae358f2e8baa8abbf20c4b35e9bc613ff6f17140
      ),
      bottomNavigationBar:SizedBox(
        child: TabBar(
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                _selectedIndex == 0 ? Icons.map : Icons.map_outlined,
              ),
              text: "Map",
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 1 ? Icons.article : Icons.article_outlined,
              ),
              text: "Review",
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 2 ? Icons.people_alt : Icons.people_alt_outlined,
              ),
              text: "Friends",
            ),
            Tab(
              icon: Icon(
                _selectedIndex == 3 ? Icons.person : Icons.person_2_outlined,
              ),
              text: "MyPage",
            ),
          ],
        ),
      ),
    );
  }

Widget _tabBar() {
  return SizedBox(
    height: 100,
    child: TabBar(
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      controller: _tabController,
      tabs: <Widget>[
        Tab(
          icon: Icon(
            _selectedIndex == 0 ? Icons.map : Icons.map_outlined,
          ),
          text: "Map",
        ),
        Tab(
          icon: Icon(
            _selectedIndex == 1 ? Icons.article : Icons.article_outlined,
          ),
          text: "Review",
        ),
        Tab(
          icon: Icon(
            _selectedIndex == 2 ? Icons.people_alt : Icons.people_alt_outlined,
          ),
          text: "Friends",
        ),
        Tab(
          icon: Icon(
            _selectedIndex == 3 ? Icons.person : Icons.person_2_outlined,
          ),
          text: "MyPage",
        ),
      ],
    ),
  );
}

  Widget _Expanded() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
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
          Container( //class명 넣으면 됨 ex)Myapp()
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: const Text(
              'Tab2',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: const Text(
              'Tab3',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          Container(
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: const Text(
              'Tab4',
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
