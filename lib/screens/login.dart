import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/widgets/text_Field.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white70.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Center(
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Welcom back login".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              LoginTextField(
                hint: "Email",
                icon: Icons.mail_outline,
                isPassword: false,
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0),
              LoginTextField(
                hint: "Password",
                icon: Icons.lock_outline,
                isPassword: true,
                inputType: TextInputType.visiblePassword,
              )
            ],
          ),
        ),
      ),
    );
  }
}
