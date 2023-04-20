import 'package:flutter/material.dart';

import '../core/vertical_divider_widget.dart';
import 'profile_score_widget.dart';

class ProfileScoreSection extends StatelessWidget {
  const ProfileScoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ProfileScoreWidget(
          count: '679',
          title: 'Posts',
          onTap: () {},
        ),
        const VerticalDividerWidget(),
        ProfileScoreWidget(
          count: '2.6M',
          title: 'Followers',
          onTap: () {},
        ),
        const VerticalDividerWidget(),
        ProfileScoreWidget(
          count: '648',
          title: 'Following',
          onTap: () {},
        ),
        const VerticalDividerWidget(),
        ProfileScoreWidget(
          count: '27M',
          title: 'Likes',
          onTap: () {},
        ),
      ],
    );
  }
}
