import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/feature/Home/presentation/Screen/home_screen.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/hobbies_projects.dart';

class HoppiesWidgets extends StatelessWidget {
  const HoppiesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
                key: HomeScreen.hoppiesKey,
                // color: Colors.black,
                padding: const EdgeInsets.all(10),
                child: Column(
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
                ),
              );
  }
}