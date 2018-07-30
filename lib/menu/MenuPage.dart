import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => MenuState();
}

class MenuState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MenuPage"),
      ),
      body: Text("MenuPage"),
    );
  }
}
