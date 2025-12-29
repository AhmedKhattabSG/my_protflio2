import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/Home/presentation/Screen/home_screen.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/mobile_header.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/profile_photo.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/web_header.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/welcome_text.dart';

// ignore: must_be_immutable
class FirstSectionWidget extends StatelessWidget {
  FirstSectionWidget(
      {super.key, required this.constraints, required this.scaffoldKey});
  final BoxConstraints constraints;
  late GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      key: HomeScreen.homeKey,
      height: 500,
      //color: Colors.black,
      child: Column(
        children: [
          if (constraints.maxWidth >= 670)
            WebHeader()
          else
            MobileHeader(
              onTapDrawer: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),
          const SizedBox(height: 100),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WelcomeText(),
              SlideInCircleImage(),
            ],
          )
        ],
      ),
    );
  }
}
