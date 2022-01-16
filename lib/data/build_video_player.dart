import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoPlayerWidget extends StatelessWidget {
  final VideoPlayerController controller;

  const VideoPlayerWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Container(height: 200,);
  Widget buildVideo() => buildVideoPlayer();
  Widget buildVideoPlayer() => VideoPlayer(controller);
}
