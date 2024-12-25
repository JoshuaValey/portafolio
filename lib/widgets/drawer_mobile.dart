import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          //Se pueden utilizar los bucles for para crear widgets dentro de una Lista
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              leading: Icon(navIcons[i], color: CustomColor.whitePrimary),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              title: Text(navTitles[i]),
              titleTextStyle: const TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              onTap: () {},
              trailing: const Icon(Icons.arrow_forward_ios,
                  color: CustomColor.hintDark, size: 15),
            )
        ],
      ),
    );
  }
}
