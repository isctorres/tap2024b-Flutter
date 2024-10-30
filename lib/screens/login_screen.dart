import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {

    final txtUser = TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Email User',
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder()
      ),
    );
    
    final txtPwd  = TextFormField(
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(
        hintText: 'Password User',
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder()
      ),
    );

    final conCredentials = Positioned(
      bottom: 190,
      child: Container(
        decoration: BoxDecoration(
          //color: Colors.black,
          borderRadius: BorderRadius.circular(20)
        ),
        height: 200,
        width: 350,
        child: ListView(
          children: [
            txtUser,
            SizedBox(height: 10,),
            txtPwd
          ],
        ),
      ),
    );

    final imgLogo = Positioned(
      top: 300,
      child: Image.asset('assets/logo_mario.png', height: 150,),
    );

    final imgBtn = Positioned(
      bottom: 100,
      child: Transform(
        transform: Matrix4.rotationY(math.pi),
        child: GestureDetector(
          onTap: (){
            isLoading = true;
            setState(() {});
            Future.delayed(Duration(seconds: 3)).then(
              (value) {
                isLoading = false;
                setState(() {});
                Navigator.pushNamed(context, '/dash');
              }
            );
          },
          child: Image.asset('assets/bala.png', height: 80,)
        )
      ),
    );

    const progress = Positioned(
      top: 500,
      child: CircularProgressIndicator()
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            //opacity: .5,
            fit: BoxFit.cover,
            image: AssetImage('assets/fondo.jpg')
          )
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            imgLogo,
            isLoading ? progress : Container(),
            imgBtn,
            conCredentials
          ],
        ),
      ),
    );
  }
}