import 'package:flutter/material.dart';

class ReusableBottomBar extends StatefulWidget {
  final List<Widget> pages;
  final List<BottomNavigationBarItem> items;

  const ReusableBottomBar({super.key, required this.pages, required this.items, required int currentIndex});

  @override
  // ignore: library_private_types_in_public_api
  _ReusableBottomBarState createState() => _ReusableBottomBarState();
}

class _ReusableBottomBarState extends State<ReusableBottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        controller: PageController(initialPage: _selectedIndex),
        children: widget.pages,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: widget.items,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}