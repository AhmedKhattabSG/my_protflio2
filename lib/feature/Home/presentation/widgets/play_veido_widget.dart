import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class AssetVideoPlayer extends StatefulWidget {
  final String assetPath;
  bool isMuted = true;

  AssetVideoPlayer({super.key, required this.assetPath, required this.isMuted});

  @override
  State<AssetVideoPlayer> createState() => _AssetVideoPlayerState();
}

class _AssetVideoPlayerState extends State<AssetVideoPlayer> {
  late VideoPlayerController _controller;
  ChewieController? _chewie;
  @override
  void initState() {
    super.initState();

    // Flutter web يدعم استخدام VideoPlayerController.asset من غير مشاكل
    _controller = VideoPlayerController.asset(widget.assetPath);

    _controller.initialize().then((_) {
      _controller.setVolume(widget.isMuted ? 0.0 : 1.0);

      _chewie = ChewieController(
          videoPlayerController: _controller,
          autoPlay: false,
          looping: false,
          allowMuting: widget.isMuted);
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewie?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _chewie != null && _controller.value.isInitialized
        ? Chewie(controller: _chewie!)
        : const Center(child: CircularProgressIndicator());
  }
}
