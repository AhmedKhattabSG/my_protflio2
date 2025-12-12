import 'package:flutter/material.dart';
import 'package:my_portfolio/feature/Home/presentation/widgets/play_veido_widget.dart';

class HobbiesProjects extends StatelessWidget {
  const HobbiesProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      runAlignment: WrapAlignment.center,
      alignment: WrapAlignment.center,
      spacing: 20,
      runSpacing: 20,
      children: [
        SizedBox(
          height: 480,
          width: 330,
          child: AssetVideoPlayer(assetPath: "images/shose.mp4",isMuted: false,),
        ),
        SizedBox(
          height: 480,
          width: 330,
          child: AssetVideoPlayer(assetPath: "images/outPut.mp4",isMuted: false,),
        ),
        SizedBox(
          height: 480,
          width: 330,
          child: AssetVideoPlayer(assetPath: "images/postapp.mp4",isMuted: false,),
        ),
        SizedBox(
          height: 480,
          width: 330,
          child: AssetVideoPlayer(assetPath: "images/shose.mp4",isMuted: false,),
        ),
      ],
    );
  }
}
