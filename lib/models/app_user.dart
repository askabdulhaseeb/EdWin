import 'package:edwin/enums/user_type.dart';

class AppUser {
  final String uid;
  final String name;
  final UserType type;
  final String username;
  final String email;
  final String profileURL;
  final String coverURL;
  final String phoneNumber;
  final String facebookURL;
  final String instaURL;
  final String twitterURL;
  final String websiteURL;

  AppUser({
    this.uid = '1122',
    this.name = 'Abdul Haseeb',
    UserType? type,
    this.username = 'askabdulhaseeb',
    this.email = 'askabdulhaseeb@gmail.com',
    this.profileURL =
        'https://i.pinimg.com/280x280_RS/a8/a8/11/a8a811ac9358279b6b34e8fd4c42d8ce.jpg',
    this.coverURL =
        'https://cdn.pixabay.com/photo/2023/04/10/10/26/animal-7913402_1280.jpg',
    this.phoneNumber = '+92 345 1021122',
    this.facebookURL = 'https://www.facebook.com/rana.abdulhaseeb.5',
    this.instaURL = 'https://www.instagram.com/r_abdulhaseeb',
    this.twitterURL = 'https://twitter.com/RanaAbdulHase14',
    this.websiteURL = 'https://devmarkaz.com',
  }) : type = type ?? UserType.appDeveloper;
}
