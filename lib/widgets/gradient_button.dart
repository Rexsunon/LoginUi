import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const GradientButton({Key key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0XFF0F9B0F), Color(0xFF000000)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: FlatButton(
          onPressed: onPress,
          splashColor: Colors.greenAccent,
          padding: EdgeInsets.all(15.0),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
      ),
    );
  }
}
