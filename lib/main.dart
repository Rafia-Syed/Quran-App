import 'package:flutter/material.dart';
import 'package:quran_app/screens/login_screen.dart';
import 'package:quran_app/screens/home_screen.dart';
import 'package:quran_app/screens/register_screen.dart';
import 'package:quran_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff240F4F)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      initialRoute: "/login",
      routes: {
  '/login': (context) => const LoginScreen(),
  '/register': (context) => const RegisterScreen(),
  '/home': (context) => const HomeScreen(),
},

    );
  }
}


