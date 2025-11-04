import 'package:bfcai_task/login_screen.dart';
import 'package:bfcai_task/profile_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(bfcaiTask());
}
class bfcaiTask extends StatelessWidget {
  const bfcaiTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
    );
  }
}
