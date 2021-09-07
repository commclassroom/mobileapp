import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget{

  int current_index=0;

  BottomBar({current_index});

  @override 
  Widget build(BuildContext context){
    return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: current_index,
          items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30,),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 30,),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30,),
            label: 'Profile',
          ),
        ],
        );
  }
}