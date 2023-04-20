import 'package:cached_video_player/cached_video_player.dart';
import 'package:flutter/material.dart';

import 'show_loading.dart';

class NetworkVideoPlayer extends StatefulWidget {
  const NetworkVideoPlayer({
    required this.url,
    this.isPlay = true,
    this.isMute = false,
    Key? key,
  }) : super(key: key);
  final String url;
  final bool isPlay;
  final bool isMute;
  @override
  State<NetworkVideoPlayer> createState() => _NetworkVideoPlayerState();
}

class _NetworkVideoPlayerState extends State<NetworkVideoPlayer> {
  late CachedVideoPlayerController controller;
  @override
  void initState() {
    controller = CachedVideoPlayerController.network(widget.url);
    // ignore: always_specify_types
    controller.initialize().then((value) {
      widget.isPlay ? controller.play() : controller.pause();
      controller.setVolume(widget.isMute ? 0 : 1);
      setState(() {});
    });
    // controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: controller.value.isInitialized
          ? CachedVideoPlayer(controller)
          : const ShowLoading(),
    );
  }
}
