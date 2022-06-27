// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viga/screens/channel_page.dart';

import 'package:viga/widgets/appbar.dart';

import 'package:viga/screens/home_page.dart';
import 'package:viga/widgets/bottom_navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(90.0), child: MyAppBar()),
        body: const <Widget>[
          HomePage(),
          ChannelPage(),
          HomePage(),
          HomePage()
        ][_selectedIndex],
        
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child:  BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.house_alt,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2), label: 'Channels'),
          BottomNavigationBarItem(
              icon: Icon(Icons.align_horizontal_left_rounded),
              label: 'TimeLine'),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.archivebox,
              ),
              label: 'Vault')
        ],
           selectedFontSize: 28,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        iconSize: 39,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        elevation: 0,
          ),











        ));
  }
}
