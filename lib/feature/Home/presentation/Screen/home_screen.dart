import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/WhatICanIDoForMobile.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/drawer_content.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/hobbies_projects.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/mobile_header.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/play_veido_widget.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/profile_photo.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/project_widgets.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/web_header.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/welcome_text.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/what_i_do.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: const Drawer(
            backgroundColor: Color.fromARGB(255, 2, 58, 49),
            child: DrawerContent()),
        body: ListView(
          children: [
            Container(
              height: 500,
              color: Colors.black,
              child: Column(
                children: [
                  if (constraints.maxWidth >= 670)
                    const WebHeader()
                  else
                    MobileHeader(
                      onTapDrawer: () {
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WelcomeText(),
                      //const SizedBox(width: 100,),
                      SlideInCircleImage()
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "What i can do",
                    style: GoogleFonts.kayPhoDu(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (constraints.maxWidth >= 670)
                    const WhatICanIDoForWeb()
                  else
                    const WhatICanIDoForMobile()
                ],
              ),
            ),
            Container(
              // height: 500,
              color: Colors.black,
              child: Column(
                spacing: 20,
                children: [
                  SizedBox(height:20),
                  Text(
                    "Projects",
                    style: GoogleFonts.kayPhoDu(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      ProjectWidget(
                          projectName: "Courtify",
                          description:
                              "An easy-to-use app for quickly booking sports fields in your area.",
                          onPressed: () {},
                          images: "images/cortify.PNG"),
                           ProjectWidget(
                          projectName: "Edufbcai Student",
                          description:
                              "E-learning system",
                          onPressed: () {},
                          images: "images/student.PNG"),
                           ProjectWidget(
                          projectName: "Dr Smart Attendance App",
                          description:
                              "Attendance system for student ",
                          onPressed: () {},
                          images: "images/smartAttendance.PNG"),
                     
                    ],
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
            Container(
                color: Colors.black,
                //  color: const Color.fromARGB(255, 202, 65, 65),
                padding: const EdgeInsets.all(10),
                child: Column(
                  spacing: 30,
                  children: [
                    Text(
                      "Hobbies Projects",
                      style: GoogleFonts.kayPhoDu(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const HobbiesProjects(),
                  ],
                )),
            Container(
              height: 500,
              color: const Color.fromARGB(255, 21, 163, 28),
            )
          ],
        ),
      );
    });
  }
}
