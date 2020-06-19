import 'package:flutter/material.dart';

class AppBarShowCase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar Showcase'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('App Bar Showcase'),
      ),
    );
  }
}