import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Scaffold.of(context).widget.appBar,
      body: Center(
        child: Text(
          "NOTIFICATION",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
