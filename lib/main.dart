import 'package:flutter/material.dart';
import 'package:virtualloja/Screens/login_screen.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
      ),
      debugShowCheckedModeBanner: true,
      home: LoginScreen(),
    );
  }
}
