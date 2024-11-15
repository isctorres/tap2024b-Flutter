import 'package:flutter/material.dart';
import 'package:tap2024b/screens/dashboard_screen.dart';
import 'package:tap2024b/screens/popular_screen.dart';
import 'package:tap2024b/screens/splash_screen.dart';
import 'package:tap2024b/settings/global_values.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GlobalValues.banThemeDark,
      builder: (context,value,_) {
        return MaterialApp(
          theme: value ? ThemeData.dark() : ThemeData.light(),
          title: 'Material App',
          routes: {
            "/dash" : (context) => const DashboardScreen(),
            "/movies" : (context) => const PopularScreen()
          },
          home: PopularScreen() //const SplashScreen()
        );
      }
    );
  }
}