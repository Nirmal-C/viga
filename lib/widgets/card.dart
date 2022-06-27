import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viga/model/card_model.dart';
import 'package:viga/screens/chemistry_page.dart';


Widget buildCard(BuildContext context, index) => ClipRRect(
      child: Container(
        height: 270,
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.only(
          left: 12,
          right: 12,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChemistryPage()),
            ), //print(cardContent[index].title),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, // add this
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  child: Image.network(cardContent[index].image,
                      // width: 300,
                      height: 150,
                      fit: BoxFit.fill),
                ),
                const SizedBox(height: 20),
                ListTile(
                  trailing: const Icon(
                    CupertinoIcons.chevron_right,
                    color: Colors.blue,
                    size: 35,
                  ),
                  title: Text(
                    cardContent[index].title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(cardContent[index].subtitle),
                ),
              ],
            ),
          ),
        ),
      ),
    );
