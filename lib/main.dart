import 'package:flutter/material.dart';
 
 
 //Routers
 
import 'package:chat/routers/routes.dart';
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyChatApp',
      initialRoute: 'login',
      routes: app_routes,
    );
  }
}
