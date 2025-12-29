import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/Home/presentation/Screen/home_screen.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/app_bar_buttons.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              AppBarButton(text: "Home", onTap: () {}),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.android_sharp,
                color: Colors.white,
              ),
              AppBarButton(
                  text: "Skills",
                  onTap: () {
                    scrollTo(HomeScreen. skillsKey);
                  }),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.work,
                color: Colors.white,
              ),
              AppBarButton(
                  text: "Projects",
                  onTap: () {
                    scrollTo(HomeScreen.projectsKey);
                  }),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.app_blocking,
                color: Colors.white,
              ),
              AppBarButton(
                  text: "Hoppies",
                  onTap: () {
                    scrollTo(HomeScreen.hoppiesKey);
                  }),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.message,
                color: Colors.white,
              ),
              AppBarButton(
                  text: "Contact",
                  onTap: () {
                    scrollTo(HomeScreen.contactKey);
                  }),
            ],
          ),
        ],
      ),
    );
  }

  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }
}
