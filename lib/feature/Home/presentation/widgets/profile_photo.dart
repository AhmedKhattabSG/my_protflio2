import 'package:flutter/material.dart';

// class SlideInCircleImage extends StatefulWidget {
//   const SlideInCircleImage({super.key});

//   @override
//   State<SlideInCircleImage> createState() => _SlideInCircleImageState();
// }

// class _SlideInCircleImageState extends State<SlideInCircleImage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Offset> _animation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 700),
//     );

//     _animation = Tween<Offset>(
//       begin: const Offset(1.0, 0), // from right
//       end: Offset.zero,
//     ).animate(CurvedAnimation(
//       parent: _controller,
//       curve: Curves.easeOut,
//     ));

//     _controller.forward(); // start animation
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SlideTransition(
//       position: _animation,
//       child: Container(

//         width: 200,
//         height: 200,
//         decoration: const BoxDecoration(

//           shape: BoxShape.circle,

//           boxShadow: [

//             BoxShadow(blurRadius: 40, color: Color.fromARGB(255, 1, 109, 91),),
//           ],
//         ),
//         child: ClipOval(
//           child: Image.asset(
//             "images/p.jpeg",
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

class SlideInCircleImage extends StatefulWidget {
  const SlideInCircleImage({super.key});

  @override
  State<SlideInCircleImage> createState() => _SlideInCircleImageState();
}

class _SlideInCircleImageState extends State<SlideInCircleImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> rotation;
  late Animation<double> floating;

  Offset mouseOffset = Offset.zero;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    rotation = Tween<double>(begin: -0.03, end: 0.03).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    floating = Tween<double>(begin: -5, end: 10).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          onHover: (event) {
            setState(() {
              mouseOffset = Offset(
                (event.localPosition.dx - 100) / 50,
                (event.localPosition.dy - 100) / 50,
              );
            });
          },
          onExit: (_) => setState(() => mouseOffset = Offset.zero),
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(mouseOffset.dx, floating.value + mouseOffset.dy),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 30,
                          spreadRadius: 2,
                          color: Color.fromARGB(255, 0, 128, 111)),
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
            },
          ),
        ),
        const SizedBox(
          height: 30,
        ),
       Container(
  width: 250,     // اعرض شوية
  height: 28,     // قصير علشان يبقى بيضاوي
  decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(50),
    boxShadow: const [
      BoxShadow(
        blurRadius: 35,
        spreadRadius: -6,        // مهم يخلي الظل مسطح
        offset: Offset(0, 10),   // ينزل تحت الصورة
        color: Color.fromARGB(95, 209, 199, 199),   // لون ظل طبيعي
      ),
    ],
  ),
)

      ],
    );
  }
}
