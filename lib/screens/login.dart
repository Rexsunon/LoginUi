import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/screens/forgot_password.dart';
import 'package:login_ui/widgets/gradient_button.dart';
import 'package:login_ui/widgets/text_Field.dart';

import 'sign_up.dart';

class Login extends StatefulWidget {
  static const String id = "Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Color(0xFF222222).withOpacity(0.2), BlendMode.srcOver)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white30.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Center(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                "Welcom back\nlogin".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              LoginTextField(
                hint: "Email",
                icon: Icons.mail_outline,
                isPassword: false,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10.0),
              LoginTextField(
                hint: "Password",
                icon: Icons.lock_outline,
                isPassword: _isPassword,
                inputType: TextInputType.visiblePassword,
                passwordVisibility:
                    _isPassword ? Icons.visibility : Icons.visibility_off,
                showPassword: () {
                  setState(() {
                    _isPassword = !_isPassword;
                  });
                },
              ),
              SizedBox(height: 10.0),
              GradientButton(
                text: "Login".toUpperCase(),
                onPress: () {},
              ),
              SizedBox(height: 30.0),
              InkWell(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, ForgotPassword.id);
                },
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.9,
                height: 10.0,
                child: Divider(
                  color: Colors.white70,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3.5,
                child: Divider(
                  color: Colors.white70,
                  thickness: 1.5,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Create Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          decorationThickness: 2.0),
                    ),
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, SignUp.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
