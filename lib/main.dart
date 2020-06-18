import 'package:flutter/material.dart';
import 'package:glova/glova.dart';

import 'component/button.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return OvaApp(
      home: ComponentButton(),
    );
  }
}
