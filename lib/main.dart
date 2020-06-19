import 'package:flutter/material.dart';

import 'component/app_bar_showcase.dart';
import 'component/avatar_showcase.dart';
import 'component/bottom_navigation_showcase.dart';
import 'component/button_showcase.dart';
import 'component/card_showcase.dart';
import 'component/check_box_showcase.dart';
import 'component/drawer_showcase.dart';
import 'component/icon_button_showcase.dart';
import 'component/image_showcase.dart';
import 'component/radio_button_showcase.dart';
import 'component/select_showcase.dart';
import 'component/spinner_showcase.dart';
import 'component/tabs_showcase.dart';
import 'component/text_field_showcase.dart';
import 'component/toggle_showcase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glova Showcase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/app_bar': (context) => AppBarShowCase(),
        '/avatar': (context) => AvatarShowCase(),
        '/bottom_navigation': (context) => BottomNavigationShowcase(),
        '/button': (context) => ButtonShowcase(),
        '/card': (context) => CardShowcase(),
        '/check_box': (context) => CheckBoxShowcase(),
        '/drawer': (context) => DrawerShowcase(),
        '/icon_button': (context) => IconButtonShowcase(),
        '/image': (context) => ImageShowcase(),
        '/radio_button': (context) => RadioButtonShowcase(),
        '/select': (context) => SelectShowcase(),
        '/spinner': (context) => SpinnerShowcase(),
        '/tabs': (context) => TabsShowcase(),
        '/text_field': (context) => TextFieldShowcase(),
        '/toggle': (context) => ToggleShowcase(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<ComponentData> _listComponent = [
    ComponentData(name: 'App Bar', route: '/app_bar'),
    ComponentData(name: 'Avatar', route: '/avatar'),
    ComponentData(name: 'Bottom Navigation', route: '/bottom_navigation'),
    ComponentData(name: 'Button', route: '/button'),
    ComponentData(name: 'Card', route: '/card'),
    ComponentData(name: 'Check box', route: '/check_box'),
    ComponentData(name: 'Drawer', route: '/drawer'),
    ComponentData(name: 'Icon Button', route: '/icon_button'),
    ComponentData(name: 'Image', route: '/image'),
    ComponentData(name: 'Radio Button', route: '/radio_button'),
    ComponentData(name: 'Select', route: '/select'),
    ComponentData(name: 'Spinner', route: '/spinner'),
    ComponentData(name: 'Tabs', route: '/tabs'),
    ComponentData(name: 'Text Field', route: '/text_field'),
    ComponentData(name: 'Toogle', route: '/toggle'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GLOVA SHOWCASE'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _listComponent.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, _listComponent[index].route);
            },
            child: Container(
              margin: EdgeInsets.only(top: (index == 0) ? 0 : 8),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                _listComponent[index].name,
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ComponentData {
  final String name;
  final String route;

  ComponentData({this.name, this.route});
}
