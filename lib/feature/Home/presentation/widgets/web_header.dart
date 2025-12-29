import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/feature/Home/presentation/Screen/home_screen.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/app_bar_buttons.dart';

class WebHeader extends StatelessWidget {
  WebHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
            margin: const EdgeInsets.symmetric(vertical:30 , horizontal: 30),

      height: 70,
      decoration:   BoxDecoration(
        borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(colors: [
        Color.fromARGB(95, 1, 7, 6),
          Color(0xff0d1012)
      ])),
      child: Row(
        children: [
          Text(
            "A K",
            style: GoogleFonts.kayPhoDu(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          AppBarButton(
              text: "Home",
              onTap: () {
                scrollTo(HomeScreen.skillsKey);
              }),
          AppBarButton(
              text: "Skills",
              onTap: () {
                scrollTo(HomeScreen.skillsKey);
              }),
          AppBarButton(
              text: "Projects",
              onTap: () {
                scrollTo(HomeScreen.projectsKey);
              }),
          AppBarButton(
              text: "Hoppies",
              onTap: () {
                scrollTo(HomeScreen.hoppiesKey);
              }),
          AppBarButton(
              text: "Contact",
              onTap: () {
                scrollTo(HomeScreen.contactKey);
              }),
        ],
      ),
    );
  }

void scrollTo(GlobalKey key) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final context = key.currentContext;
    if (context == null) {
      debugPrint("SECTION NOT FOUND");
      return;
    }

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  });
}

}
