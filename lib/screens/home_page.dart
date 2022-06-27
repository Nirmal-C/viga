import 'package:flutter/material.dart';

import 'package:viga/widgets/card.dart';
import 'package:viga/model/card_model.dart';
import 'package:viga/widgets/appbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.separated(
            itemBuilder: (context, index) {
              return buildCard( context,index,);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12);
            },
            itemCount: cardContent.length,
            padding: const EdgeInsets.all(12)),

    
             
    );
  }
}
