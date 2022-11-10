import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_flutter_app/cubit/auth_cubit.dart';
import 'package:new_flutter_app/cubit/page_cubit.dart';
//import 'package:new_flutter_app/observer.dart';
import 'package:new_flutter_app/ui/pages/bonus_page.dart';
import 'package:new_flutter_app/ui/pages/get_started.dart';
import 'package:new_flutter_app/ui/pages/log_in.dart';
import 'package:new_flutter_app/ui/pages/main_page.dart';
import 'package:new_flutter_app/ui/pages/sign_up.dart';
import 'package:new_flutter_app/ui/pages/splash_page.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStarted(),
          '/sign-up': (context) => SignUp(),
          '/bonus': (context) => const BonusPage(),
          '/main-page': (context) => const MainPage(),
          '/sign-in': (context) => SignIn()
        },
      ),
    );
  }
}
