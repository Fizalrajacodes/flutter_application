import 'package:flutter/material.dart';
import 'theme.dart';
import 'pages/splash_screen.dart';
import 'pages/login_page.dart';
import 'pages/signup_page.dart';
import 'pages/forgot_password.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fizal Raja App",
      debugShowCheckedModeBanner: false,
      theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
      routes: {
        "/": (context) => SplashScreen(),
        "/login": (context) => LoginPage(toggleTheme: toggleTheme),
        "/signup": (context) => SignupPage(),
        "/forgot": (context) => ForgotPasswordPage(),
        "/home": (context) => HomePage(),
        "/profile": (context) => ProfilePage(),
      },
    );
  }

  void toggleTheme() {
    setState(() {
      isDark = !isDark;
    });
  }
}
