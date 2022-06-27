import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key, Widget? title}) : super(key: key );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: IconButton(
          icon: const Icon(
            CupertinoIcons.chevron_left,
            color: Colors.blue,
            size: 35,
          ),
          onPressed: () => Navigator.of(context).pop()),
      title: const Text(
        'Home',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: (IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              color: Colors.blue,
              size: 36,
            ),
            onPressed: () {},
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 37),
          child: (IconButton(
            icon: Image.network(
              'https://res.cloudinary.com/dxmxhyzsy/image/upload/v1655437210/Viga/user_icon_nqnlu4.png',
            ),
            onPressed: () {},
          )),
        ),
      ],
    );
  }
}
