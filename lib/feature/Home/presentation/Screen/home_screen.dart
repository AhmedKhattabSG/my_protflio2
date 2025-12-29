import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/contact_widget.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/drawer_content.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/first_section_widget.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/hoppies_widgets.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/prof_projects.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/skills_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

   static final homeKey = GlobalKey();
  static final skillsKey = GlobalKey();
  static final projectsKey = GlobalKey();
  static final hoppiesKey = GlobalKey();
  static final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          backgroundColor: Colors.black,
          key: scaffoldKey,
          endDrawer: const Drawer(
              backgroundColor: Color.fromARGB(255, 2, 58, 49),
              child: DrawerContent()),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(
                  "images/back2.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), // غمق الصورة بنسبة 50%
                  BlendMode.darken, // طريقة المزج
                ),
              ),
            ),
            child: SingleChildScrollView(
                child: Column(children: [
              FirstSectionWidget(
                constraints: constraints,
                scaffoldKey: scaffoldKey,
              ),
              const SizedBox(height: 100),
              SkillsWidgets(constraints: constraints),
              const SizedBox(height: 50),
              ProfssionalProjects(
                key: projectsKey,
              ),
              const SizedBox(height: 50),
              const HoppiesWidgets(),
              const SizedBox(
                height: 50,
              ),
              const ContactWidget()
            ])),
          ));
    });
  }
}
