import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key, required this.onTapDrawer});
  final VoidCallback? onTapDrawer;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient:   const LinearGradient(colors: [
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
          IconButton(
              onPressed: onTapDrawer,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
