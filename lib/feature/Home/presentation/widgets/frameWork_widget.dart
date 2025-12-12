import 'package:flutter/material.dart';

class OperatingSystemWidget extends StatefulWidget {
  const OperatingSystemWidget({
    super.key,
    required this.icon,
    required this.name,
  });

  final String name;
  final IconData icon;

  @override
  State<OperatingSystemWidget> createState() => _OperatingSystemWidgetState();
}

class _OperatingSystemWidgetState extends State<OperatingSystemWidget>
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
      begin: const Offset(-1, 0), // من خارج الشاشة ناحية اليسار
      end: Offset.zero, // مكانها الطبيعي
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
    ));

    _controller.forward(); // تشغيل الأنيميشن
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: 200,
        height: 100,
        color: const Color.fromARGB(29, 169, 180, 182),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Text(
              widget.name,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
