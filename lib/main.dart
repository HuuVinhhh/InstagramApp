import 'package:flutter/material.dart';
import 'package:instagram_app/screen/create_screen.dart';
import 'package:instagram_app/screen/dashboard_screen.dart';
import 'package:instagram_app/screen/login_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/sign-up': (context) => const SignupScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/create': (context) => const CreateScreen(),
      },
    );
  }
}
