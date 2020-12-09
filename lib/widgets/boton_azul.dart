import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  const BotonAzul({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      child: Container(
          height: 55,
          width: double.infinity,
          child: Center(
              child: Text(
            this.text,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ))),
      onPressed: this.onPressed,
    );
  }
}
