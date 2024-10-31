import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tap2024b/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/logo_mario.png'),
      logoWidth: 150,
      title: const Text('Bivenidos a mi App', style: TextStyle(fontSize: 20),),
      showLoader: true,
      loadingText: const Text('Cargando aplicación ....'),
      navigator: const LoginScreen(),
      durationInSeconds: 4,
      gradientBackground: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          Colors.red
        ]
      ),
    );
  }
}