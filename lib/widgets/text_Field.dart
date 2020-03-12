import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;
  final TextInputType inputType;

  const LoginTextField({Key key, this.hint, this.icon, this.isPassword, this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          border: OutlineInputBorder(),focusColor: Colors.white,
          fillColor: Colors.white70.withOpacity(0.5),
          hintText: hint,
      hintStyle: TextStyle(fontSize: 20.0, color: Colors.white70, fontWeight: FontWeight.w500)),
      obscureText: isPassword,
      keyboardType: inputType,
    );
  }
}
