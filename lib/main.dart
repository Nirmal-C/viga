import 'package:flutter/material.dart';
import 'package:viga/home.dart';
import 'package:viga/screens/channel_page.dart';
import 'package:viga/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Home(),
      // initialRoute: '/',




      // routes:{
      //   '/': (context)=>const  HomePage(),
      //   '/channel': (context) => const ChannelPage(),

     // }
    );
  }
}
