import 'package:flutter/material.dart';
import 'package:viga/widgets/bottom_navbar.dart';

class ChemistryPage extends StatefulWidget {
  const ChemistryPage({Key? key}) : super(key: key);

  @override
  State<ChemistryPage> createState() => _ChemistryPageState();
}

class _ChemistryPageState extends State<ChemistryPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
bottomNavigationBar:  MyBottomNavbar()
    );
  }
}
