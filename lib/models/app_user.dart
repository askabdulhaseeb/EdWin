import 'package:edwin/enums/user_type.dart';

class AppUser {
  final String uid;
  final String name;
  final UserType type;
  final String username;
  final String email;
  final String profileURL;
  final String phoneNumber;

  AppUser({
    this.uid = '1122',
    this.name = 'Abdul Haseeb',
    UserType? type,
    this.username = 'askabdulhaseeb',
    this.email = 'askabdulhaseeb@gmail.com',
    this.profileURL =
        'https://i.pinimg.com/280x280_RS/a8/a8/11/a8a811ac9358279b6b34e8fd4c42d8ce.jpg',
    this.phoneNumber = '+92 345 1021122',
  }) : type = type ?? UserType.appDeveloper;
}
