

import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/Splash/splashscreen.dart';

import 'Screens/SignUp/signupscreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Imstagram",
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );

  }
}
