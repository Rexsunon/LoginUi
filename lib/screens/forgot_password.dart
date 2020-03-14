import 'package:flutter/material.dart';
import 'package:login_ui/widgets/gradient_button.dart';
import 'package:login_ui/widgets/text_Field.dart';

class ForgotPassword extends StatelessWidget {
  static const String id = 'Forgot password';

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
                "Forgot Password".toUpperCase(),
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
              GradientButton(
                text: "Send email".toUpperCase(),
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
