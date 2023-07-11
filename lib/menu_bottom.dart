import 'package:flutter/material.dart';

class Bottom extends StatelessWidget{
  const Bottom({super.key});

  @override
  Widget build(BuildContext context){
    return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index){
          switch (index){
            case 0:
              Navigator.pushNamed(context, '/map');
              break;
            case 1:
              Navigator.pushNamed(context, '/review');
              break;
            case 2:
              Navigator.pushNamed(context, '/friend');
              break;
            case 3:
              Navigator.pushNamed(context, '/mypage');
              break;
              default:
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_comment_outlined),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account_outlined),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Settings',
          ),
        ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black);
  }
}