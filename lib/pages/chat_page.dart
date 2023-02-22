import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Scaffold.of(context).widget.appBar,
        body: Center(
          child: Text(
            "CHAT",
            style: TextStyle(fontSize: 36),
          ),
        ));
  }
}
