import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class OpinionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Instagram Stories
          Container(
              height: 150,
              child: Text(
                "OPINIÕES",
                style: TextStyle(fontSize: 32),
              )),

          //Instagran Posts
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      height: 400,
                      color: Colors.purple[200],
                      child: Center(
                          child: Text(
                        'Opinião Item ${index + 1}',
                        style: TextStyle(fontSize: 40),
                      )),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
