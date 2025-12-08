import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key,required this.onTapDrawer});
final VoidCallback? onTapDrawer;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          IconButton(
              onPressed:onTapDrawer,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
