import 'package:flutter/material.dart';

import '../enums/profile_tab_icon_type.dart';

class ProfileProvider extends ChangeNotifier {
  ProfileTabIconType _selectedTap = ProfileTabIconType.grid;
  ProfileTabIconType get selectedTap => _selectedTap;

  onChange(ProfileTabIconType value) {
    _selectedTap = value;
    notifyListeners();
  }
}
