 

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarButton extends StatefulWidget {
  const AppBarButton({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  State<AppBarButton> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> with SingleTickerProviderStateMixin {
  bool isHovered = false;
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Slide animation from top to normal position
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(1, -5), // start from above
      end: const Offset(0, 0), // move to normal position
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward(); // start animation on load
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 30),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          hoverColor: const Color.fromARGB(150, 68, 137, 255),
          onPressed: widget.onTap,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            style: GoogleFonts.kayPhoDu(
              color: isHovered ? Colors.blueAccent : Colors.white,
              fontSize: isHovered ? 20 : 18,
              fontWeight: FontWeight.bold,
            ),
            child: Text(widget.text),
          ),
        ),
      ),
    );
  }
}
