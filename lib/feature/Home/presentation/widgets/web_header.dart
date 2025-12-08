import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/app_bar_buttons.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  height: 100,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(95, 3, 109, 91),
                    Color.fromARGB(255, 2, 59, 50),
                  ])),
                  child: Row(
                    children: [
                      Text(
                        "A K",
                        style: GoogleFonts.kayPhoDu(
                            color: Colors.blue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      AppBarButton(text: "Home", onTap: () {}),
                      AppBarButton(text: "Skills", onTap: () {}),
                      AppBarButton(text: "Projects", onTap: () {}),
                      AppBarButton(text: "Blog", onTap: () {}),
                      AppBarButton(text: "Contact", onTap: () {}),
                    ],
                  ),
                );
  }
}