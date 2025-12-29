// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:my_portfolio/feature/Home/presentation/widgets/project_widgets.dart';

// class ProfssionalProjects extends StatelessWidget {
//   const ProfssionalProjects({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // height: 500,
//       color: Colors.black,
//       child: Column(
//         spacing: 20,
//         children: [
//           const SizedBox(height: 20),
//           Text(
//             "Projects",
//             style: GoogleFonts.kayPhoDu(
//                 color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const Wrap(
//             spacing: 30,
//             runSpacing: 30,
//             alignment: WrapAlignment.center,
//             children: [
//               ProjectWidget(
//                   projectName: "Courtify",
//                   description:
//                       "An easy-to-use app for quickly booking sports fields in your area.",
//                   googlePlayUrl:
//                       "https://play.google.com/store/apps/details?id=com.SmartGate.tennis_home",
//                   images: "images/cortify.PNG"),
//               ProjectWidget(
//                   projectName: "Edufbcai Student",
//                   description: "E-learning system",
//                   googlePlayUrl:
//                       "https://play.google.com/store/apps/details?id=com.SmarteGate.facultysystem",
//                   images: "images/student.PNG"),
//               ProjectWidget(
//                   projectName: "Dr Smart Attendance App",
//                   description: "Attendance system for student ",
//                   googlePlayUrl:
//                       "https://play.google.com/store/apps/details?id=com.SmartGate.doctors_collage",
//                   images: "images/smartAttendance.PNG"),
//             ],
//           ),
//           const SizedBox(
//             height: 20,
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/project_widgets.dart';

class ProfssionalProjects extends StatelessWidget {
  const ProfssionalProjects({super.key});

  @override
  Widget build(BuildContext context) {
    const projects = [
      ProjectWidget(
        projectName: "Courtify",
        description: "An easy-to-use app for quickly booking sports fields.",
        googlePlayUrl:
            "https://play.google.com/store/apps/details?id=com.SmartGate.tennis_home",
        images: "images/cortify.PNG",
      ),
      ProjectWidget(
        projectName: "Edufbcai Student",
        description:
            "E-learning systemو built for Al-Azhar University students, allowing them to easily view exam results, access study materials, track attendance, and pay university fees online.",
        googlePlayUrl:
            "https://play.google.com/store/apps/details?id=com.SmarteGate.facultysystem",
        images: "images/student.PNG",
      ),
      ProjectWidget(
        projectName: "Dr Smart Attendance App",
        description:
            "smart attendance management app for university lecturers, allowing them to create lecture sessions and securely generate unique QR codes for students to register their attendance instantl",
        googlePlayUrl:
            "https://play.google.com/store/apps/details?id=com.SmartGate.doctors_collage",
        images: "images/smartAttendance.PNG",
      ),
    ];

    return Container(
      //color: Colors.black,
      child: Column(
        children: [
          const SizedBox(height: 70),
          Text(
            "Projects",
            style: GoogleFonts.kayPhoDu(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 70),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: projects.asMap().entries.map((entry) {
              final i = entry.key;
              final w = entry.value;

              return w
                  .animate(delay: (300 * i).ms)
                  .fadeIn(duration: 600.ms)
                  .slideY(begin: 0.3, end: 0);
            }).toList(),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
