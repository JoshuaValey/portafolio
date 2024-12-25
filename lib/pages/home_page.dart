import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/nav_items.dart';
import 'package:portafolio/styles/styles.dart';
import 'package:portafolio/widgets/drawer_mobile.dart';
import 'package:portafolio/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldkey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: const DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //main

            // const HeaderDesktop(),
            HeaderMobile(onMenuTap: () {
              scaffoldkey.currentState?.openEndDrawer();
            }, onLogoTap: () {
              print('Hola menu');
            }),
//Skills
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.blue,
            ),

//Projects
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.white,
            ),

//Contact
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.blue,
            ),
//Footer
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.white,
            ),
          ],
        ));
  }
}
