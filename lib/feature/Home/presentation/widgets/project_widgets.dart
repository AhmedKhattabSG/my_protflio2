import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget(
      {super.key,
      required this.projectName,
      required this.description,
      required this.onPressed,
      required this.images});
  final String projectName;
  final String description;
  final String images;

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: 310,
      color: const Color.fromRGBO(169, 180, 182, 0.114),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Container(
            height: 160,
            width: 310,
            color: Colors.amber,
            child: Image.asset(
              images,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  projectName,
                  style: GoogleFonts.kayPhoDu(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: GoogleFonts.kayPhoDu(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              color: const Color.fromARGB(29, 169, 180, 182),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  spacing: 20,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "avilable on : ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SvgPicture.asset(
                      "images/googleplay.svg",
                      color: Colors.white,
                      height: 20,
                      width: 20,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
