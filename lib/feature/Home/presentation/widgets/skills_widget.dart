import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillWidgets extends StatefulWidget {
  SkillWidgets({
    super.key,
    required this.color,
    required this.icon,
    required this.skillName,
  });

  final String skillName;
  final String icon;
  final Color color;

  @override
  State<SkillWidgets> createState() => _SkillWidgetsState();
}

class _SkillWidgetsState extends State<SkillWidgets>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animation = Tween<Offset>(
      begin: const Offset(1, 0), // 👉 يدخل من اليمين
      end: Offset.zero,          // مكانه الطبيعي
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: const Color.fromARGB(29, 169, 180, 182),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: 150,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              widget.skillName,
              style: const TextStyle(color: Colors.white),
            ),
            SvgPicture.asset(
              widget.icon,
              color: widget.color,
            ),
          ],
        ),
      ),
    );
  }
}
