// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:viga/widgets/bottom_navbar.dart';
import 'package:viga/widgets/appbar.dart';

class ChannelPage extends StatefulWidget {
  const ChannelPage({Key? key}) : super(key: key);

  @override
  State<ChannelPage> createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  bottomNavigationBar: ,
     
      body: Text("Channel Page"),
      
    );
  }
}
