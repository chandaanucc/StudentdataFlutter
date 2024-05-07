import 'package:flutter/material.dart';

class CustAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const CustAppBar({super.key, required this.title});
  @override
  State<CustAppBar> createState() => _CustAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustAppBarState extends State<CustAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            widget.title,
            style: const TextStyle(
                fontSize: 20, // Adjust the font size as needed
                fontWeight: FontWeight.bold, // Adjust the font weight as needed
                color: Colors.black),
          )),
    );
  }
}
