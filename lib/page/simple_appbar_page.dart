import 'dart:io';
import 'dart:ui';

import 'package:proto_trybu/main.dart';
import 'package:flutter/material.dart';

class SimpleAppBarPage extends StatefulWidget {
  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
                child: Text(
              MyApp.title,
              textAlign: TextAlign.center,
              style: TextStyle(color: MyApp.primaryColor),
            )),
            //centerTitle: true,
            leading: IconButton(
              icon: CircleAvatar(
                radius: 35, //radius is 35.
                backgroundImage:
                    AssetImage('assets/leaf.png'), //AssetImage loads image URL.
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.light_mode,
                ),
                onPressed: () {},
              )
            ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [MyApp.backgroundColor, MyApp.backgroundColor],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: MyApp.primaryColor,
              indicatorWeight: 5,
              tabs: [
                Tab(text: 'FEED'),
                Tab(text: 'ENTIDADES'),
                Tab(text: 'NEGÓCIOS'),
                Tab(text: 'OPINIÕES'),
              ],
              labelColor: MyApp.primaryColor,
              unselectedLabelColor: Colors.grey,
              padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
              labelStyle: TextStyle(fontSize: 12),
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              buildPage('Home Page'),
              buildPage('Feed Page'),
              buildPage('Profile Page'),
              buildPage('Settings Page'),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
