import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/frameWork_widget.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/skill_item.dart';

class WhatICanIDoForMobile extends StatelessWidget {
  const WhatICanIDoForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // decoration: const BoxDecoration(
        //     gradient: LinearGradient(colors: [
        //  Colors.black,
        //   Color(0xff0d1012)  ,
        // ])),
      child: Column(
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
           // color: Colors.black,
            // height: 300,
            child: Wrap(
              //spacing: 25,
              children: [
               SkillItem(
                      color: const Color(0xff0175C2),
                      icon: "images/dart.svg",
                      skillName: "dart"),
                  SkillItem(
                      color: const Color(0xff02569B),
                      icon: "images/flutter.svg",
                      skillName: "flutter"),
                  SkillItem(
                      color:  Colors.amber,
                      icon: "images/firebase.svg",
                      skillName: "firebase"),
                  SkillItem(
                      color: const Color(0xff5FA04E),
                      icon: "images/nodedotjs.svg",
                      skillName: "nodeJs"),
                  SkillItem(
                      color: const Color(0xff47A248),
                      icon: "images/mongodb.svg",
                      skillName: "mongoDb"),
                  SkillItem(
                      color: const Color(0xffF7DF1E),
                      icon: "images/javascript.svg",
                      skillName: "java script"),
              ],
            ),
          )
        ],
      ),
    );
  }
}