import 'dart:math';

import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';
import '../core/network_video_player.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({
    required this.posts,
    this.isProfileWidget = true,
    this.isPremiumPerson = false,
    Key? key,
  }) : super(key: key);
  final List<String> posts;
  final bool isProfileWidget;
  final bool isPremiumPerson;

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
        itemBuilder: (BuildContext context, int index) {
          final bool isPremium =
              isPremiumPerson ? Random().nextInt(10) % 2 == 0 : false;
          return Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1 / 2,
                child: NetworkVideoPlayer(
                  url: posts[index],
                  isPlay: false,
                  isMute: true,
                ),
              ),
              if (isPremium)
                SizedBox(
                  height: 20,
                  child: Image.asset(AppImages.premiumBadge),
                ),
              Positioned(
                bottom: 16,
                left: 16,
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(isPremium
                      ? AppImages.premiumcircularPlayButton
                      : AppImages.circularPlayButton),
                ),
              ),
            ],
          );
        });
  }
}
