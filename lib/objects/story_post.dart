class StoryPost {
  final String username;
  final String avatarPath;
  bool badge;

  StoryPost(
      {required this.username, required this.avatarPath, this.badge = true});
}
