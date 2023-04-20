import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/app_user.dart';
import '../core/circular_image.dart';

class HomeVideoUserAndMusicInfoWidget extends StatelessWidget {
  const HomeVideoUserAndMusicInfoWidget({
    super.key,
    required this.user,
  });

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 70,
      right: 56,
      left: 16,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.04),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 4, color: Colors.white),
                    image: DecorationImage(
                      image: NetworkImage(user.profileURL),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        user.type.title,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Lines (text art). Lines with symbol to decorate your blog or Facebook. To use click on it and ',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularImage(imageURL: user.profileURL),
                ),
                const SizedBox(width: 4),
                const Icon(CupertinoIcons.music_note_2, color: Colors.white),
                const Expanded(
                  child: Text(
                    'Lines (text art). Lines with symbol to decorate your blog or Facebook. To use click on it and ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
