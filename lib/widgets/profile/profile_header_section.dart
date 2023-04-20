import 'package:flutter/material.dart';

import '../../models/app_user.dart';
import '../core/custom_network_image.dart';

class ProfileHeaderSection extends StatelessWidget {
  const ProfileHeaderSection({required this.user, super.key});

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16 / 9,
          child: CustomNetworkImage(imageURL: user.coverURL),
        ),
        Positioned(
          bottom: -80,
          child: Column(
            children: [
              SizedBox(
                height: 160,
                width: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CustomNetworkImage(imageURL: user.profileURL),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '@${user.username}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                user.type.title,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        )
      ],
    );
  }
}
