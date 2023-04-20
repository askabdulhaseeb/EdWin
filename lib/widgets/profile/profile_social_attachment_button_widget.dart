import 'package:edwin/functions/url_funcation.dart';
import 'package:edwin/models/app_user.dart';
import 'package:edwin/utilities/utilities.dart';
import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';
import '../../utilities/app_images.dart';

class ProfileSocialAttachmentButtonWidget extends StatelessWidget {
  const ProfileSocialAttachmentButtonWidget(
      {required this.isPremiumPerson, super.key});
  final bool isPremiumPerson;

  @override
  Widget build(BuildContext context) {
    final AppUser user = AppUser();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton.icon(
          onPressed: () {},
          icon: isPremiumPerson
              ? SizedBox(height: 24, child: Image.asset(AppImages.work))
              : const Icon(Icons.person_add_alt_1),
          label:
              isPremiumPerson ? const Text('Subscribe') : const Text('Follow'),
          style: ElevatedButton.styleFrom(
            backgroundColor: isPremiumPerson
                ? Utilities.seconderyColor
                : Theme.of(context).primaryColor,
            padding:
                EdgeInsets.symmetric(horizontal: isPremiumPerson ? 16 : 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        IconButton(
          onPressed: () async =>
              await UrlFunction().lunchStringURL(user.instaURL),
          splashRadius: 16,
          icon: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            child: Icon(
              CustomIcons.instagram,
              size: 20,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        if (isPremiumPerson)
          IconButton(
            onPressed: () async =>
                await UrlFunction().lunchStringURL(user.facebookURL),
            splashRadius: 16,
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Icon(
                CustomIcons.facebook,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        if (isPremiumPerson)
          IconButton(
            onPressed: () async =>
                await UrlFunction().lunchStringURL(user.twitterURL),
            splashRadius: 16,
            icon: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
              child: Icon(
                CustomIcons.twitter,
                size: 14,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        IconButton(
          onPressed: () async =>
              await UrlFunction().lunchStringURL(user.websiteURL),
          splashRadius: 16,
          icon: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            child: Icon(
              Icons.arrow_drop_down_rounded,
              size: 32,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
