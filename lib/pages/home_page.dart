import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/nav_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //main

            mainSection(),
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

Widget mainSection() {
  return Container(
    height: 60.0,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
          colors: [Colors.transparent, CustomColor.bgLight1]),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Row(children: [
      const Text(
        'JR',
        style: TextStyle(
            color: CustomColor.yellowSecondary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline),
      ),
      const Spacer(),
      for (int i = 0; i < navTitles.length; i++)
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: TextButton(
            onPressed: () {},
            child: Text(
              navTitles[i],
              style: const TextStyle(
                  color: CustomColor.whitePrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
    ]),
  );
}
