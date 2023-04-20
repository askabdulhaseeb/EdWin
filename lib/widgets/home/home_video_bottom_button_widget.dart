import 'package:edwin/views/user_screens/profile_screen.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
                const SizedBox(width: 16),
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        CustomIcons.heart,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      '22K',
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: const [
                      Icon(
                        CustomIcons.comment,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '2.3K',
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: const [
                      Icon(
                        CustomIcons.shareto,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '5.3M',
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: const [
                      Icon(
                        CustomIcons.bookmark,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4),
                      Text(
                        '100K',
                        style: TextStyle(fontSize: 8, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 6),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<ProfileScreen>(
                        builder: (context) => ProfileScreen(uid: user.uid),
                      ),
                    );
                  },
                  splashRadius: 16,
                  icon: CircularImage(imageURL: user.profileURL),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<ProfileScreen>(
                        builder: (context) => ProfileScreen(uid: user.uid),
                      ),
                    );
                  },
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
