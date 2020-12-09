import 'package:flutter/material.dart';

// Icono de logo
class Logo extends StatelessWidget {
  const Logo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: 170,
        child: Column(
          children: [
            Image(image: AssetImage('assets/tag-logo.png')),
            Text(
              "Messenger",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
