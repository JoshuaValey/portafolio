import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/nav_items.dart';
import 'package:portafolio/styles/styles.dart';
import 'package:portafolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, this.onLogoTap});

  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: kHeaderDecoration,
      child: Row(children: [
        SiteLogo(onTap: onLogoTap),
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
}
