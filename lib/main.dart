import 'package:flutter/material.dart';
import 'package:login_ui/screens/forgot_password.dart';
import 'package:login_ui/screens/login.dart';
import 'package:login_ui/screens/sign_up.dart';
import 'package:login_ui/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito Sans',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Login.id: (context) => Login(),
        SignUp.id: (context) => SignUp(),
        ForgotPassword.id: (context) => ForgotPassword()
      },
      home: SplashScreen(),
    );
  }
}
