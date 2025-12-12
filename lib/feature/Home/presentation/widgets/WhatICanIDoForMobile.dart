import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/frameWork_widget.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/skills_widget.dart';

class WhatICanIDoForMobile extends StatelessWidget {
  const WhatICanIDoForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        const Wrap(
          children: [
             OperatingSystemWidget(
                icon: Icons.android,
                name: "Android Dev",
              ),
              OperatingSystemWidget(
                icon: Icons.apple,
                name: "Ios Dev",
              ),
              OperatingSystemWidget(
                icon: Icons.computer,
                name: "Desktop Dev",
              ),
              OperatingSystemWidget(
                icon: Icons.language,
                name: "Web Dev",
              ),
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Container(
          color: Colors.black,
          // height: 300,
          child: Wrap(
            //spacing: 25,
            children: [
             SkillWidgets(
                    color: const Color(0xff0175C2),
                    icon: "images/dart.svg",
                    skillName: "dart"),
                SkillWidgets(
                    color: const Color(0xff02569B),
                    icon: "images/flutter.svg",
                    skillName: "flutter"),
                SkillWidgets(
                    color:  Colors.amber,
                    icon: "images/firebase.svg",
                    skillName: "firebase"),
                SkillWidgets(
                    color: const Color(0xff5FA04E),
                    icon: "images/nodedotjs.svg",
                    skillName: "nodeJs"),
                SkillWidgets(
                    color: const Color(0xff47A248),
                    icon: "images/mongodb.svg",
                    skillName: "mongoDb"),
                SkillWidgets(
                    color: const Color(0xffF7DF1E),
                    icon: "images/javascript.svg",
                    skillName: "java script"),
            ],
          ),
        )
      ],
    );
  }
}