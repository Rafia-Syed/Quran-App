import 'package:flutter/material.dart';
import 'package:quran_app/screens/login_screen.dart';
import 'package:quran_app/screens/register_screen.dart';
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
      home: SplashScreen(),
  //     initialRoute: "/login",
  //     routes: {
  // '/login': (context) => const LoginScreen(),
  // '/register': (context) => const RegisterScreen(),
  // '/home': (context) => const HomeScreen(),
// },

    );
  }
}



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHomeScreen();
  }

  void navigateToHomeScreen() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/quran.png',
            width: size.width * 1,
              height: size.height * 0.8,
            ),
            Text("THE LIGHT OF QURAN", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}


