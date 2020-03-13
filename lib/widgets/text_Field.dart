import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;
  final TextInputType inputType;
  final IconData passwordVisibility;
  final Function showPassword;

  const LoginTextField(
      {Key key,
      this.hint,
      this.icon,
      this.isPassword,
      this.inputType,
      this.passwordVisibility,
      this.showPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
          fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Colors.white,
        ),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
            width: 1.5,
          ),
        ),
        hintText: hint,
        suffixIcon: GestureDetector(
          child: Icon(
            passwordVisibility,
            color: Colors.white,
          ),
          onTap: showPassword,
        ),
        hintStyle: TextStyle(
          fontSize: 20.0,
          color: Colors.white70,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: Colors.white30.withOpacity(0.3)
      ),
      obscureText: isPassword,
      keyboardType: inputType,
    );
  }
}
