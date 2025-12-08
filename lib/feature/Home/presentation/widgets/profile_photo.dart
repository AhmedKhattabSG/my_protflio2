import 'package:flutter/material.dart';

class SlideInCircleImage extends StatefulWidget {
  const SlideInCircleImage({super.key});

  @override
  State<SlideInCircleImage> createState() => _SlideInCircleImageState();
}

class _SlideInCircleImageState extends State<SlideInCircleImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _animation = Tween<Offset>(
      begin: const Offset(1.0, 0), // from right
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _controller.forward(); // start animation
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
       
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
           
          shape: BoxShape.circle,
          
          boxShadow: [
          
            BoxShadow(blurRadius: 40, color: Color.fromARGB(255, 255, 255, 255),),
          ],
        ),
        child: ClipOval(
          child: Image.asset(
            "images/p.jpeg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
