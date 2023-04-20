import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';

class ProfileOptionButtonWidget extends StatelessWidget {
  const ProfileOptionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.person_add_alt_1),
          label: const Text('Follow'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
            child: Icon(
              CustomIcons.instagram,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
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
