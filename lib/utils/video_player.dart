import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

const kDefaultAspectRatio = 16 / 9;

enum VideoType {
  asset,
  network,
}

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    @required this.path,
    this.videoType = VideoType.network,
    this.width,
    this.height,
    this.aspectRatio,
    this.autoPlay = false,
    this.looping = false,
    this.showControls = true,
    this.allowFullScreen = true,
    this.allowPlaybackSpeedMenu = false,
    this.allowMuting = true,
    this.startAt,
    this.materialProgressColors,
  });

  final String path;
  final VideoType videoType;
  final double width;
  final double height;
  final double aspectRatio;
  final bool autoPlay;
  final bool looping;
  final bool allowMuting;
  final bool showControls;
  final bool allowFullScreen;
  final bool allowPlaybackSpeedMenu;
  final Duration startAt;
  final ChewieProgressColors materialProgressColors;


  @override
  State<StatefulWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController _videoPlayerWidgetController;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  @override
  void dispose() {
    _videoPlayerWidgetController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  double get width => widget.width == null || widget.width >= double.infinity
      ? MediaQuery.of(context).size.width
      : widget.width;

  double get height => widget.height == null || widget.height >= double.infinity
      ? (width != null ? width / aspectRatio : null)
      : widget.height;

  double get aspectRatio =>
      _chewieController?.videoPlayerController?.value?.aspectRatio ??
      kDefaultAspectRatio;

  Future initializePlayer() async {
    _videoPlayerWidgetController = widget.videoType == VideoType.network
        ? VideoPlayerController.network(widget.path)
        : VideoPlayerController.asset(widget.path);
    await _videoPlayerWidgetController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerWidgetController,
      deviceOrientationsOnEnterFullScreen: [
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ],
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      aspectRatio: widget.aspectRatio,
      autoPlay: widget.autoPlay,
      allowMuting: widget.allowMuting,
      startAt: widget.startAt,
      looping: widget.looping,
      materialProgressColors: widget.materialProgressColors,
      showControls: widget.showControls,
      allowFullScreen: widget.allowFullScreen,
      allowPlaybackSpeedChanging: widget.allowPlaybackSpeedMenu,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => FittedBox(
        fit: BoxFit.cover,
        child: Container(
          height: height,
          width: width,
          child: _chewieController != null &&
                  _chewieController.videoPlayerController.value.isInitialized
              ? Chewie(controller: _chewieController)
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text('Loading'),
                  ],
                ),
        ),
      );
}
