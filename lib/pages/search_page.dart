import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Scaffold.of(context).widget.appBar,
        body: Center(
          child: Text(
            "SEARCH",
            style: TextStyle(fontSize: 36),
          ),
        ));
  }
}
