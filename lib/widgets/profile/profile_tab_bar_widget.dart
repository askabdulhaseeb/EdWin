import 'package:edwin/providers/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../custom_icons_icons.dart';
import '../../enums/profile_tab_icon_type.dart';
import '../../utilities/app_images.dart';

class ProfileTabBarWidget extends StatelessWidget {
  const ProfileTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Consumer<ProfileProvider>(builder: (context, profilePro, _) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _TabIcon(
              icon: const ImageIcon(
                AssetImage(AppImages.coloredGridView),
                color: Colors.grey,
              ),
              activeIcon: Image.asset(AppImages.coloredGridView),
              isSelected: ProfileTabIconType.grid == profilePro.selectedTap,
              onTap: () => profilePro.onChange(ProfileTabIconType.grid),
            ),
            _TabIcon(
              icon: const Icon(CustomIcons.bookmark, color: Colors.grey),
              activeIcon: Icon(
                CustomIcons.bookmark,
                color: Theme.of(context).primaryColor,
              ),
              isSelected: ProfileTabIconType.bookmark == profilePro.selectedTap,
              onTap: () => profilePro.onChange(ProfileTabIconType.bookmark),
            ),
            _TabIcon(
              icon: const Icon(CustomIcons.heart, color: Colors.grey),
              activeIcon: Icon(
                CustomIcons.heart,
                color: Theme.of(context).primaryColor,
              ),
              isSelected: ProfileTabIconType.heart == profilePro.selectedTap,
              onTap: () => profilePro.onChange(ProfileTabIconType.heart),
            ),
          ],
        );
      }),
    );
  }
}

class _TabIcon extends StatelessWidget {
  const _TabIcon({
    required this.icon,
    required this.activeIcon,
    required this.isSelected,
    required this.onTap,
  });
  final bool isSelected;
  final Widget icon;
  final Widget activeIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 28,
              child: isSelected ? activeIcon : icon,
            ),
            const SizedBox(height: 10),
            Container(
              height: 3,
              width: double.infinity,
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Colors.grey.shade200,
            ),
          ],
        ),
      ),
    );
  }
}
