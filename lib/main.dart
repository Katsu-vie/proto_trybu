import 'package:flutter/cupertino.dart';
import 'package:proto_trybu/pages/chat_page.dart';
import 'package:proto_trybu/pages/home_page.dart';
import 'package:proto_trybu/pages/notification_page.dart';
import 'package:proto_trybu/pages/search_page.dart';
import 'package:proto_trybu/pages/setting_page.dart';

import 'page/transparent_appbar_page.dart';
import 'page/simple_appbar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Trybu';
  static final Color primaryColor = Color.fromRGBO(219, 181, 52, 1);

  static final Color backgroundColor = Color.fromARGB(255, 1, 17, 27);
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
          primaryColor: primaryColor,
          colorScheme: ColorScheme(
              secondary: primaryColor,
              onSecondary: primaryColor,
              primary: backgroundColor,
              onPrimary: primaryColor,
              brightness: Brightness.dark,
              error: Colors.redAccent,
              onError: Colors.red,
              background: backgroundColor,
              onBackground: backgroundColor,
              surface: backgroundColor,
              onSurface: backgroundColor)),
      home: MainPage(title: title));
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 1;

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: buildPages(),
        bottomNavigationBar: buildBottomBar(),
      );
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      ChatPage(),
      SearchPage(),
      NotificationPage(),
      SettingPage()
    ];
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Center(
          child: Text(
        "Trybu",
        textAlign: TextAlign.center,
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      )),
      //centerTitle: true,
      leading: IconButton(
        icon: CircleAvatar(
          radius: 35, //radius is 35.
          backgroundImage:
              AssetImage('assets/user.png'), //AssetImage loads image URL.
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.light_mode,
            color: Theme.of(context).colorScheme.secondary,
          ),
          onPressed: () {},
        )
      ],
      //backgroundColor: Colors.purple,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
      ),
      elevation: 8,
      titleSpacing: 20,
      shadowColor: Color.fromARGB(109, 125, 146, 173),
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(0), bottom: Radius.circular(1)),
          side: BorderSide(color: Color.fromARGB(109, 125, 146, 173))),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        activeColorPrimary: MyApp.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.mail),
        activeColorPrimary: MyApp.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search),
        activeColorPrimary: MyApp.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notifications_none),
        activeColorPrimary: MyApp.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        activeColorPrimary: MyApp.primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  Widget buildBottomBar() {
    final style = TextStyle(color: MyApp.primaryColor);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: MyApp.backgroundColor, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return ChatPage();
      case 2:
        return SearchPage();
      case 3:
        return NotificationPage();
      case 3:
        return SettingPage();
      default:
        return Container();
    }
  }
}
