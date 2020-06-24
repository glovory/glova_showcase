import 'package:flutter/material.dart';
import 'package:glova/glova.dart';

import '../utils.dart';

class ButtonShowcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Showcase'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              _button(),
              SizedBox(height: 12),
              _buttonStatus(),
              SizedBox(height: 12),
              _buttonSize(),
              SizedBox(height: 12),
              _buttonAppearance(),
              SizedBox(height: 12),
              _ButtonPlayground(),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Text('Button'),
          ),
          Divider(thickness: 1, height: 0),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    OvaButton(
                      onPress: () {},
                      child: Text('Enable'),
                    ),
                    SizedBox(width: 8),
                    OvaButton(
                      child: Text('Disable'),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    OvaButton(
                      onPress: () {},
                      icon: Icon(Icons.star),
                    ),
                    SizedBox(width: 8),
                    OvaButton(
                      icon: Icon(Icons.star),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    OvaButton(
                      onPress: () {},
                      child: Text('Enable'),
                      icon: Icon(Icons.star),
                    ),
                    SizedBox(width: 8),
                    OvaButton(
                      child: Text('Disable'),
                      icon: Icon(Icons.star),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: <Widget>[
                    OvaButton(
                      onPress: () {},
                      child: Text('Enable'),
                      icon: Icon(Icons.star),
                      isLeading: false,
                    ),
                    SizedBox(width: 8),
                    OvaButton(
                      child: Text('Disable'),
                      icon: Icon(Icons.star),
                      isLeading: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonStatus() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Text('Button Color'),
          ),
          Divider(thickness: 1, height: 0),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ...(OvaButtonStatus.values)
                    .map((status) => OvaButton(
                          onPress: () {},
                          status: status,
                          child: Text(enumToString(status)),
                        ))
                    .toList(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ...(OvaButtonStatus.values)
                    .map((status) => OvaButton(
                          onPress: () {},
                          status: status,
                          icon: Icon(Icons.star),
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonSize() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Text('Button Size'),
          ),
          Divider(thickness: 1, height: 0),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ...(OvaButtonSize.values)
                    .map((size) => OvaButton(
                          onPress: () {},
                          size: size,
                          child: Text(enumToString(size)),
                          status: OvaButtonStatus.basic,
                        ))
                    .toList(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ...(OvaButtonSize.values)
                    .map((size) => OvaButton(
                          onPress: () {},
                          size: size,
                          icon: Icon(Icons.star),
                          status: OvaButtonStatus.basic,
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buttonAppearance() {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Text('Button Appearance'),
          ),
          Divider(thickness: 1, height: 0),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ...(OvaButtonAppearance.values)
                    .map((app) => OvaButton(
                          onPress: () {},
                          appearance: app,
                          child: Text(enumToString(app)),
                        ))
                    .toList(),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                ...(OvaButtonAppearance.values)
                    .map((app) => OvaButton(
                          onPress: () {},
                          appearance: app,
                          icon: Icon(Icons.star),
                        ))
                    .toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ButtonPlayground extends StatefulWidget {
  @override
  __ButtonPlaygroundState createState() => __ButtonPlaygroundState();
}

class __ButtonPlaygroundState extends State<_ButtonPlayground> {
  bool isEnabled;
  String status;
  String size;
  String appearance;
  bool isChangeTheme;
  int radioValue;
  bool isStretch;
  List<double> listPadding = [0, 4, 8, 12, 16, 20];
  double top;
  double bottom;
  double left;
  double right;

  @override
  void initState() {
    super.initState();
    status = enumToString(OvaButtonStatus.primary);
    size = enumToString(OvaButtonSize.medium);
    appearance = enumToString(OvaButtonAppearance.filled);
    isEnabled = true;
    isChangeTheme = false;
    radioValue = 0;
    isStretch = false;
    top = 8;
    bottom = 8;
    left = 8;
    right = 8;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Text('Playground'),
          ),
          Divider(thickness: 1, height: 0),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: isEnabled,
                      onChanged: (val) {
                        setState(() {
                          isEnabled = val;
                        });
                      },
                    ),
                    Text('Enable'),
                    Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: isStretch,
                      onChanged: (val) {
                        setState(() {
                          isStretch = val;
                        });
                      },
                    ),
                    Text('Stretch'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 0,
                          groupValue: radioValue,
                          onChanged: (val) {
                            setState(() {
                              radioValue = val;
                            });
                          },
                        ),
                        Text(
                          'Text Only',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: radioValue,
                          onChanged: (val) {
                            setState(() {
                              radioValue = val;
                            });
                          },
                        ),
                        Text(
                          'Text With Left Icon',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: radioValue,
                          onChanged: (val) {
                            setState(() {
                              radioValue = val;
                            });
                          },
                        ),
                        Text(
                          'Text With Right Icon',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 3,
                          groupValue: radioValue,
                          onChanged: (val) {
                            setState(() {
                              radioValue = val;
                            });
                          },
                        ),
                        Text(
                          'Icon Only',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ],
                ),
                DropdownButton(
                  isExpanded: true,
                  hint: Text('Select Status'),
                  value: status,
                  items: OvaButtonStatus.values
                      .map((val) => DropdownMenuItem(
                            child: Text(enumToString(val)),
                            value: enumToString(val),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                ),
                SizedBox(height: 8),
                DropdownButton(
                  isExpanded: true,
                  hint: Text('Select Size'),
                  value: size,
                  items: OvaButtonSize.values
                      .map((val) => DropdownMenuItem(
                            child: Text(enumToString(val)),
                            value: enumToString(val),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      size = val;
                    });
                  },
                ),
                SizedBox(height: 8),
                DropdownButton(
                  isExpanded: true,
                  hint: Text('Select Appearance'),
                  value: appearance,
                  items: OvaButtonAppearance.values
                      .map((val) => DropdownMenuItem(
                            child: Text(enumToString(val)),
                            value: enumToString(val),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      appearance = val;
                    });
                  },
                ),
                SizedBox(height: 8),
                Text('Padding for small size (T,B,L,R)'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    DropdownButton(
                      hint: Text('Top'),
                      value: top,
                      items: listPadding
                          .map((val) => DropdownMenuItem(
                                child: Text(val.toString()),
                                value: val,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          top = val;
                        });
                      },
                    ),
                    DropdownButton(
                      hint: Text('Bottom'),
                      value: bottom,
                      items: listPadding
                          .map((val) => DropdownMenuItem(child: Text(val.toString()), value: val))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          bottom = val;
                        });
                      },
                    ),
                    DropdownButton(
                      hint: Text('Left'),
                      value: left,
                      items: listPadding
                          .map((val) => DropdownMenuItem(child: Text(val.toString()), value: val))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          left = val;
                        });
                      },
                    ),
                    DropdownButton(
                      hint: Text('Right'),
                      value: right,
                      items: listPadding
                          .map((val) => DropdownMenuItem(child: Text(val.toString()), value: val))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          right = val;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8),
                OvaButtonTheme(
                  data: OvaButtonThemeData(
                    swatch: OvaTheme.of(context).colorSwatch,
                    padding: {
                      OvaButtonSize.small: OvaPadding.only(
                        top: top,
                        bottom: bottom,
                        left: left,
                        right: right,
                      ),
                    },
                  ),
                  child: OvaButton(
                    onPress: isEnabled ? () {} : null,
                    child: (radioValue != 3) ? Text('Text') : null,
                    icon: (radioValue != 0) ? Icon(Icons.star) : null,
                    isLeading: (radioValue == 1) ? true : false,
                    status: enumFromString(status, OvaButtonStatus.values),
                    size: enumFromString(size, OvaButtonSize.values),
                    appearance: enumFromString(appearance, OvaButtonAppearance.values),
                    stretch: isStretch,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
