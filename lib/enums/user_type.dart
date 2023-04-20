enum UserType {
  appDeveloper('app_developer', 'App Developer'),
  player('player', 'Player'),
  artist('artist', 'Artist');

  const UserType(this.json, this.title);
  final String json;
  final String title;
}
