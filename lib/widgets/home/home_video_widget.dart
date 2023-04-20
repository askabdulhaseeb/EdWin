import 'package:edwin/custom_icons_icons.dart';
import 'package:edwin/utilities/app_images.dart';
import 'package:edwin/widgets/core/network_video_player.dart';
import 'package:flutter/material.dart';

import '../core/png_icon_button.dart';

class HomeVideoWidget extends StatelessWidget {
  const HomeVideoWidget({
    required this.url,
    required this.pageController,
    super.key,
  });
  final String url;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: NetworkVideoPlayer(url: url),
        ),
        Positioned(
          right: 16,
          top: 16,
          bottom: 100,
          child: Column(
            children: [
              IconButton(
                onPressed: () {
                  // TODO: Report User
                },
                splashRadius: 16,
                icon: const Icon(Icons.flag, color: Colors.white),
              ),
              PngIconButton(
                AppImages.blockUser,
                onTap: () {
                  // TODO: Block user
                },
              ),
              const Spacer(),
              PngIconButton(
                AppImages.plusIcon,
                onTap: () {
                  //TODO: Add Video
                },
              ),
              const SizedBox(height: 8),
              IconButton(
                onPressed: () {},
                icon: const Icon(CustomIcons.video, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CustomIcons.volumeup, color: Colors.white),
              ),
              const SizedBox(height: 8),
              PngIconButton(
                AppImages.document,
                onTap: () {
                  //TODO: Document
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
