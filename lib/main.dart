import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_windows/responsive/responsive_layout_screen.dart';
import 'package:project_windows/utils/colors.dart';
import 'package:project_windows/responsive/we_screen_layout.dart';
import 'package:project_windows/responsive/mobile_screen_layout.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CityGem',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout:  MobileScreenLayout(),
          webScreenLayout:  WebScreenLayout()
      ),
    );
  }
}

