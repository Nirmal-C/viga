import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyBottomNavbar extends StatefulWidget {
  const MyBottomNavbar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavbar> createState() => _MyBottomNavbarState();
}

class _MyBottomNavbarState extends State<MyBottomNavbar> {
  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedFontSize: 28,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        iconSize: 39,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        elevation: 0,
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
        ]);
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// class MyBottomNavBar extends StatefulWidget {
//   const MyBottomNavBar({Key? key}) : super(key: key);

//   @override
//   State<MyBottomNavBar> createState() => _MyBottomNavBarState();
// }

// class _MyBottomNavBarState extends State<MyBottomNavBar> {
//   Color _iconColor = Colors.grey.shade400;

//   void onItemTapped() {
//     setState(() {
//       if (_iconColor == Colors.grey.shade400) {
//         _iconColor = Colors.blue;
//       } else {
//         _iconColor = Colors.grey.shade400;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: avoid_unnecessary_containers
//     return Container(
//       color: Colors.white,
//       height: 100,
//       padding: const EdgeInsets.only(top:15, bottom:30

//       ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         IconButton(
//             onPressed: () {
//               Navigator.pushReplacementNamed(context, '/');
//             },
//             icon: Icon(CupertinoIcons.house_alt, size: 39, color: _iconColor)),
//         IconButton(
//             onPressed: () {
//               Navigator.pushReplacementNamed(context, '/channel');
//               onItemTapped();
//             },
//             icon:  Icon(CupertinoIcons.chat_bubble_2, size: 39,color: _iconColor)),
//         IconButton(
//             onPressed: () {},
//             icon:  Icon(Icons.align_horizontal_left_rounded,size: 39,color: _iconColor)),
//         IconButton(
//             onPressed: () {}, icon:  Icon(CupertinoIcons.archivebox,color: _iconColor,size: 39))
//       ],
//     ));
//   }
// }
