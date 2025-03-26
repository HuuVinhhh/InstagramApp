// ignore_for_file: non_constant_identifier_names

import 'package:instagram_app/objects/explore_post.dart';
import 'package:instagram_app/objects/message_post.dart';
import 'package:instagram_app/objects/noti_post.dart';
import 'package:instagram_app/objects/post_home.dart';
import 'package:instagram_app/objects/reel_post.dart';
import 'package:instagram_app/objects/story_post.dart';

class ErgouData {
  static List<Post> HOME_POSTS = [
    Post(
        username: 'anhnq.204',
        caption: 'hongkong by night',
        location: 'Hongkong',
        imageURL: 'assets/images/posts/hongkong.jpg',
        avatarURL: 'assets/images/avatars/anhnq204.jpg'),
    Post(
        username: 'xxxibgdrgn',
        caption: 'vogue korea',
        location: 'Seoul, Korea',
        imageURL: 'assets/images/posts/gd.jpg',
        avatarURL: 'assets/images/avatars/xxxibgdrgn.jpg'),
    Post(
        username: 'justinbieber',
        caption: 'golfffff',
        location: 'Hawaii, US',
        imageURL: 'assets/images/posts/justinbieber.jpg',
        avatarURL: 'assets/images/avatars/justinbieber.jpg'),
    Post(
        username: 'yifei_cc',
        caption: 'sweetieee',
        location: 'Beijing, China',
        imageURL: 'assets/images/posts/yifei.jpg',
        avatarURL: 'assets/images/avatars/yifei_cc.jpg'),
  ];

  static List<ReelPost> REEL_POSTS = [
    ReelPost(
        username: 'xxxibgdrgn',
        caption: 'a nice day',
        avatarPath: 'assets/images/avatars/xxxibgdrgn.jpg',
        videoUrl:
            'https://videos.pexels.com/video-files/1828452/1828452-hd_1280_720_24fps.mp4'),
    ReelPost(
        username: 'ttt',
        caption: 'ferrari',
        avatarPath: 'assets/images/avatars/ttt.jpg',
        videoUrl:
            'https://videos.pexels.com/video-files/2524618/2524618-hd_1280_720_30fps.mp4'),
    ReelPost(
        username: 'yifei_cc',
        caption: 'sunset',
        avatarPath: 'assets/images/avatars/yifei_cc.jpg',
        videoUrl:
            'https://videos.pexels.com/video-files/3324489/3324489-hd_720_1280_30fps.mp4'),
  ];

  static List<ExplorePost> EXPLORE_POSTS = [
    ExplorePost(
      imageURL:
          'https://images.pexels.com/photos/31049336/pexels-photo-31049336/free-photo-of-vibrant-orange-vintage-volkswagen-beetle-close-up.jpeg',
    ),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/19343014/pexels-photo-19343014/free-photo-of-cowboy-horseback-riding-on-preirie.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/31147896/pexels-photo-31147896/free-photo-of-charming-thatched-cottage-in-cotswolds-england.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/31123026/pexels-photo-31123026/free-photo-of-traditional-japanese-stone-lantern-in-garden-setting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/28982084/pexels-photo-28982084/free-photo-of-cozy-book-on-wrinkled-bedspread.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/31142167/pexels-photo-31142167/free-photo-of-florence-street-view-with-duomo-in-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/31091614/pexels-photo-31091614/free-photo-of-urban-street-scene-with-couple-walking-in-shadow.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/7904726/pexels-photo-7904726.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/31102059/pexels-photo-31102059/free-photo-of-horseman-in-snowy-armenian-landscape.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/30147888/pexels-photo-30147888/free-photo-of-cowboy-silhouette-riding-at-sunset-in-ardic.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/31236777/pexels-photo-31236777/free-photo-of-traditional-chinese-architecture-with-modern-buildings.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ExplorePost(
        imageURL:
            'https://images.pexels.com/photos/31213430/pexels-photo-31213430/free-photo-of-cute-snowman-in-a-winter-garden-setting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
  ];

  static List<NotiPost> NOTI_POSTS = [
    NotiPost(
        username: 'xeesoxee',
        description: 'liked your photo.',
        avatarPath: 'assets/images/avatars/xeesoxee.jpg',
        imagePath: 'assets/images/posts/hongkong.jpg'),
    NotiPost(
        username: 'ttt',
        description: 'liked your photo.',
        avatarPath: 'assets/images/avatars/ttt.jpg',
        imagePath: 'assets/images/posts/hongkong.jpg'),
    NotiPost(
        username: 'peaceminusonedotcom',
        description: 'liked your photo.',
        avatarPath: 'assets/images/avatars/peaceminusonedotcom.jpg',
        imagePath: 'assets/images/posts/hongkong.jpg'),
    NotiPost(
        username: 'jennierubyjane',
        description: 'liked your photo.',
        avatarPath: 'assets/images/avatars/jennierubyjane.jpg',
        imagePath: 'assets/images/posts/hongkong.jpg'),
  ];

  static List<MessagePost> MESSAGE_POSTS = [
    MessagePost(
      username: 'xeesoxee',
      message: 'see ya!.',
      avatarPath: 'assets/images/avatars/xeesoxee.jpg',
    ),
    MessagePost(
      username: 'ttt',
      message: 'sent you a photo.',
      avatarPath: 'assets/images/avatars/ttt.jpg',
    ),
    MessagePost(
      username: 'peaceminusonedotcom',
      message: 'okay!',
      avatarPath: 'assets/images/avatars/peaceminusonedotcom.jpg',
    ),
    MessagePost(
      username: 'jennierubyjane',
      message: 'sent a sticker.',
      avatarPath: 'assets/images/avatars/jennierubyjane.jpg',
    ),
  ];

  static List<String> PROFILE_POSTS = [
    'assets/images/profile/img1.png',
    'assets/images/profile/img2.png',
    'assets/images/profile/img3.png',
    'assets/images/profile/img4.png',
    'assets/images/profile/img5.png',
    'assets/images/profile/img6.png',
    'assets/images/profile/img7.png',
    'assets/images/profile/img8.png',
    'assets/images/profile/img9.png',
    'assets/images/profile/img10.png',
    'assets/images/profile/img11.png'
  ];

  static List<StoryPost> STORY_POSTS = [
    StoryPost(
        username: 'Your story',
        avatarPath: 'assets/images/avatars/anhnq204.jpg',
        badge: false),
    StoryPost(
        username: 'xxxibgdrgn',
        avatarPath: 'assets/images/avatars/xxxibgdrgn.jpg'),
    StoryPost(username: 'ttt', avatarPath: 'assets/images/avatars/ttt.jpg'),
    StoryPost(
        username: 'xeesoxee', avatarPath: 'assets/images/avatars/xeesoxee.jpg'),
    StoryPost(
        username: 'jennierubyjane',
        avatarPath: 'assets/images/avatars/jennierubyjane.jpg'),
  ];

  static void addPost(Post post) {
    HOME_POSTS.add(post);
  }
}
