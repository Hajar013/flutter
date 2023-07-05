import 'package:flutter/material.dart';
import 'package:untitled1/watch.dart';
import 'home/home.dart';
import 'profile.dart';
import 'notifications.dart';
import 'menuPage.dart';

class TabNavigation extends StatefulWidget {
  @override
  _TabNavigationState createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  String appBarName = 'facebook';
  bool _iconbool = true;
  IconData _iconLight = Icons.wb_sunny;
  IconData _iconDark = Icons.nights_stay;
  ThemeData _lightTheme = ThemeData.light();
  ThemeData _darkTheme = ThemeData.dark();

  late String email;
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (args != null) {
      email = args['email'];
    }
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Theme(
        data: _iconbool ? _darkTheme : _lightTheme,
        child: Scaffold(
          appBar: AppBar(
            title: Text(appBarName),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _iconbool = !_iconbool;
                  });
                },
                icon: Icon(_iconbool ? _iconLight : _iconDark),
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              home(),
              Watch(),
              Profile(name: email.toString().split('@').first),
              NotificationPage(),
              Menu(name: email.toString().split('@').first),
            ],
          ),
          bottomNavigationBar:  Material(
            color: _iconbool? Color(0x424242) : Colors.blue,
            child: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.ondemand_video), text: 'Watch'),
                Tab(icon: Icon(Icons.account_circle_outlined), text: 'Profile'),
                Tab(icon: Icon(Icons.notifications), text: 'Notifications'),
                Tab(icon: Icon(Icons.menu), text: 'Menu'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}