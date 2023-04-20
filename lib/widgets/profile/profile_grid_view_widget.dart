import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';
import '../core/network_video_player.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({
    required this.posts,
    this.isProfileWidget = true,
    Key? key,
  }) : super(key: key);
  final List<String> posts;
  final bool isProfileWidget;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 1 / 2,
      ),
      primary: false,
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (BuildContext context, int index) => NetworkVideoPlayer(
        url: posts[index],
        isPlay: false,
        isMute: true,
      ),
    );
  }
}
