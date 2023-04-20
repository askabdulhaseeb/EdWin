import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:edwin/models/app_user.dart';
import 'package:edwin/providers/profile_provider.dart';
import 'package:edwin/widgets/profile/profile_grid_view_widget.dart';

import '../../enums/profile_tab_icon_type.dart';
import '../../utilities/app_images.dart';
import '../../widgets/profile/profile_header_section.dart';
import '../../widgets/profile/profile_score_section.dart';
import '../../widgets/profile/profile_social_attachment_button_widget.dart';
import '../../widgets/profile/profile_tab_bar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({required this.uid, Key? key}) : super(key: key);
  final String uid;

  @override
  Widget build(BuildContext context) {
    final bool isPremiumPerson =
        kDebugMode ? true : Random().nextInt(10) % 2 == 0;
    final List<String> urls = [
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
      AppImages.demmyVideoURL,
    ];
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ProfileHeaderSection(user: user),
            const SizedBox(height: 90),
            const ProfileScoreSection(),
            const SizedBox(height: 16),
            ProfileSocialAttachmentButtonWidget(
                isPremiumPerson: isPremiumPerson),
            const SizedBox(height: 16),
            const ProfileTabBarWidget(),
            Consumer<ProfileProvider>(builder: (context, profilePro, _) {
              return profilePro.selectedTap == ProfileTabIconType.grid
                  ? ProfileGridView(
                      posts: urls,
                      isPremiumPerson: isPremiumPerson,
                    )
                  : profilePro.selectedTap == ProfileTabIconType.bookmark
                      ? ProfileGridView(
                          posts: urls,
                          isPremiumPerson: isPremiumPerson,
                        )
                      : ProfileGridView(
                          posts: urls,
                          isPremiumPerson: isPremiumPerson,
                        );
            }),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}
