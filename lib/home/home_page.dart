import 'package:exampleproject/basic_widgets/cust_bottom.dart';

import 'package:flutter/material.dart';

import '../req_widgets/page_one.dart';
import '../req_widgets/page_three.dart';
import '../req_widgets/page_two.dart';

class Home extends StatefulWidget {
  const Home({super.key, required String title});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      bottomNavigationBar: ReusableBottomBar(
        currentIndex: 0,
        pages: [
          HomePage(),
          ListPage(),
          Page3(),
        ],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Students',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

