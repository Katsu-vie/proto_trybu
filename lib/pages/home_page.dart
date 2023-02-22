import 'package:flutter/material.dart';
import '../main.dart';
import 'home/feeds_page.dart';
import 'home/entities_page.dart';
import 'home/business_page.dart';
import 'home/opinions_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppbar(context),
        body: TabBarView(
          children: [
            FeedsPage(),
            EntitiesPage(),
            BusinessPage(),
            OpinionsPage(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      title: (Scaffold.of(context).widget.appBar as AppBar).title,
      //centerTitle: true,
      leading: (Scaffold.of(context).widget.appBar as AppBar).leading,
      actions: (Scaffold.of(context).widget.appBar as AppBar).actions,
      shadowColor: (Scaffold.of(context).widget.appBar as AppBar).shadowColor,
      //backgroundColor: Colors.purple,
      flexibleSpace:
          (Scaffold.of(context).widget.appBar as AppBar).flexibleSpace,
      bottom: TabBar(
        //isScrollable: true,
        indicatorColor: Theme.of(context).primaryColor,
        indicatorWeight: 5,
        tabs: [
          Tab(text: 'FEED'),
          Tab(text: 'ENTIDADES'),
          Tab(text: 'NEGÓCIOS'),
          Tab(
            text: 'OPINIÕES',
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.grey,
        padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
        labelStyle: TextStyle(fontSize: 12),
        onTap: (index) => {
          //this.index = index
        },
      ),
      elevation: (Scaffold.of(context).widget.appBar as AppBar).elevation,
      titleSpacing: (Scaffold.of(context).widget.appBar as AppBar).titleSpacing,
      shape: (Scaffold.of(context).widget.appBar as AppBar).shape,
    );
  }
}
