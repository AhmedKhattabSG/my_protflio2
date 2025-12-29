import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactItem extends StatefulWidget {
  const ContactItem({
    super.key,
    required this.color,
    required this.icon,
    required this.contactName,
    required this.onPressed
  });

  final String contactName;
  final String icon;
  final Color color;
  final VoidCallback onPressed;

  @override
  State<ContactItem> createState() => _SkillWidgetsState();
}

class _SkillWidgetsState extends State<ContactItem>
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
      end: Offset.zero, // مكانه الطبيعي
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
      child: GestureDetector(
        onTap:widget.onPressed ,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color.fromARGB(29, 178, 190, 192),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: 150,
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                widget.contactName,
                style: const TextStyle(color: Colors.white),
              ),
              SvgPicture.asset(
                widget.icon,
                color: widget.color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
