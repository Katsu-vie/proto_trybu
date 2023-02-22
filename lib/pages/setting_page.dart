import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Scaffold.of(context).widget.appBar,
        body: Center(
          child: Text(
            "SETTING",
            style: TextStyle(fontSize: 36),
          ),
        ));
  }
}
