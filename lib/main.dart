import 'package:flutter/material.dart';
import 'package:new_flutter_app/ui/pages/bonus_page.dart';
import 'package:new_flutter_app/ui/pages/get_started.dart';
import 'package:new_flutter_app/ui/pages/main_page.dart';
import 'package:new_flutter_app/ui/pages/sign_up.dart';
import 'package:new_flutter_app/ui/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/get-started': (context) => const GetStarted(),
        '/sign-up': (context) => const SignUp(),
        '/bonus': (context) => const BonusPage(),
        '/main-page': (context) => const MainPage(),
      },
    );
  }
}
