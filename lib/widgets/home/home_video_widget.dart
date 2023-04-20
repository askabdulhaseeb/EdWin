import 'package:edwin/models/app_user.dart';
import 'package:edwin/widgets/core/network_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_video_bottom_button_widget.dart';
import 'home_video_right_button_section.dart';
import 'home_video_user_and_music_info_widget.dart';

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
    final AppUser user = AppUser();
    return Stack(
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: NetworkVideoPlayer(url: url),
        ),
        const HomeVideoRightButtonSection(),
        HomeVideoUserAndMusicInfoWidget(user: user),
        HomeVideoBottomButtonsWidget(user: user),
      ],
    );
  }
}
