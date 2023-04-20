import 'package:edwin/custom_icons_icons.dart';
import 'package:edwin/models/app_user.dart';
import 'package:edwin/widgets/core/custom_network_image.dart';
import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';
import '../../widgets/core/vertical_divider_widget.dart';
import '../../widgets/profile/profile_header_section.dart';
import '../../widgets/profile/profile_score_section.dart';
import '../../widgets/profile/profile_score_widget.dart';
import '../../widgets/profile/profile_tab_bar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.uid, Key? key}) : super(key: key);
  final String uid;
  @override
  Widget build(BuildContext context) {
    final AppUser user = AppUser();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).textTheme.bodyMedium!.color,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SizedBox(
              height: 44,
              child: Image.asset(AppImages.chatCall),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage(AppImages.notification)),
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage(AppImages.more)),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ProfileHeaderSection(user: user),
          const SizedBox(height: 90),
          const ProfileScoreSection(),
          const SizedBox(height: 16),
          const ProfileTabBarWidget(),
        ],
      ),
    );
  }
}
