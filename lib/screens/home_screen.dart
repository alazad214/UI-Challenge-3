import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_challange3/constants/exit_app.dart';

import '../pages/account.dart';
import '../pages/add.dart';
import '../pages/chat.dart';
import '../pages/home.dart';
import '../pages/my_ads.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _CurrentIndex = 0;

  final _pages = [
    const Home_S(),
    const My_Ads_S(),
    const Add_S(),
    const Chat_s(),
    const Acount_S(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          ExitApp().Exit(context);
          return Future.value(false);
        },
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _CurrentIndex,
            onTap: (int index) {
              setState(() {
                _CurrentIndex = index;
              });
            },
            backgroundColor: Colors.deepOrangeAccent,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black54,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.black54,
                  ),
                  label: "My Ads"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.black54,
                  ),
                  label: "Add"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.mail_outline,
                    color: Colors.black54,
                  ),
                  label: "Chat"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black54,
                  ),
                  label: "Account"),
            ],
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.blue,
            selectedIconTheme: IconThemeData(color: Colors.blue, size: 30),
            unselectedFontSize: 14,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedFontSize: 16,
          ),
          body: _pages[_CurrentIndex],
        ));
  }
}
