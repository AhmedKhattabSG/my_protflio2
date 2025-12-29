import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/feature/Home/presentation/Screen/home_screen.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/WhatICanIDoForMobile.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/what_i_do.dart';

// ignore: must_be_immutable
class SkillsWidgets extends StatelessWidget {
  SkillsWidgets({super.key, required this.constraints});
  final BoxConstraints constraints;
  late GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      key:HomeScreen.skillsKey,
      //   color: Colors.black,
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            "What i can do",
            style: GoogleFonts.kayPhoDu(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 70),
          if (constraints.maxWidth >= 670)
            const WhatICanIDoForWeb()
          else
            const WhatICanIDoForMobile()
        ],
      ),
    );
  }
}
