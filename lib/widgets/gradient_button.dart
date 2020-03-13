import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const GradientButton({Key key, this.text, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: FlatButton(
        onPressed: onPress,
        color: Colors.green,
        splashColor: Colors.greenAccent,
        padding: EdgeInsets.all(15.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
