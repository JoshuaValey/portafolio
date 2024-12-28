import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/widgets/drawer_mobile.dart';
import 'package:portafolio/widgets/header_desktop.dart';
import 'package:portafolio/widgets/header_mobile.dart';
import 'package:portafolio/constants/sizes.dart';
import 'package:portafolio/widgets/main_desktop.dart';
import 'package:portafolio/widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          key: scaffoldkey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth < kMinDesktopWidth
              ? const DrawerMobile()
              : null,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //main
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(onMenuTap: () {
                  scaffoldkey.currentState?.openEndDrawer();
                }, onLogoTap: () {
                  print('Hola menu');
                }),


              if (constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),
              //const MainMobile(),
              //const MainDesktop(),

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
    });
  }
}

class Presentation extends StatelessWidget {
  const Presentation({super.key, this.screenSize, this.screenWidth});

  final Size? screenSize;
  final double? screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text('''
              ¡Hola!
              Soy Joshua Váley y me apasiona 
              el desarrollo de software. ''',
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.yellowPrimary),
                child: const Text('Contáctame'),
              )
            ],
          ),
          Image.asset('assets/PortafolioImage.png', width: screenWidth)
        ],
      ),
    );
  }
}
