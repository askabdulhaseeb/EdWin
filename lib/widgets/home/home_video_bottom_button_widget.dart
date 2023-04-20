import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';
import '../../models/app_user.dart';
import '../../utilities/utilities.dart';
import '../core/circular_image.dart';

class HomeVideoBottomButtonsWidget extends StatelessWidget {
  const HomeVideoBottomButtonsWidget({required this.user, super.key});
  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      right: 16,
      left: 16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42),
              gradient: LinearGradient(
                colors: [
                  Utilities.instaPinkColor,
                  Theme.of(context).primaryColor,
                ],
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  splashRadius: 16,
                  icon: const Icon(
                    CustomIcons.heart,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 16,
                  icon: const Icon(
                    CustomIcons.comment,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 16,
                  icon: const Icon(
                    CustomIcons.shareto,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 16,
                  icon: const Icon(
                    CustomIcons.bookmark,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 16,
                  icon: CircularImage(imageURL: user.profileURL),
                ),
                IconButton(
                  onPressed: () {},
                  splashRadius: 16,
                  icon: CircularImage(imageURL: user.profileURL),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
