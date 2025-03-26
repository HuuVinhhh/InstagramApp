import 'package:flutter/material.dart';
import 'package:instagram_app/screen/about_screen.dart';
import 'package:instagram_app/screen/create_screen.dart';
import 'package:instagram_app/screen/dashboard_screen.dart';
import 'package:instagram_app/screen/home_screen.dart';
import 'package:instagram_app/screen/login_screen.dart';
import 'package:instagram_app/screen/message_screen.dart';
import 'package:instagram_app/screen/notification_screen.dart';
import 'package:instagram_app/screen/reels_screen.dart';
import 'package:instagram_app/screen/search_screen.dart';
import 'package:instagram_app/screen/setting_screen.dart';
import 'package:instagram_app/screen/signup_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/sign-up': (context) => const SignupScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/create': (context) => const CreateScreen(),
        '/settings': (context) => const SettingScreen(),
        '/about-us': (context) => const AboutScreen(),
        '/explore': (context) => const SearchScreen(),
        '/reels': (context) => const ReelsScreen(),
        '/notifications': (context) => const NotificationScreen(),
        '/messages': (context) => const MessageScreen()
      },
    );
  }
}
