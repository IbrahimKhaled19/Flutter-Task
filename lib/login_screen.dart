import 'package:bfcai_task/custom_form_field.dart';
import 'package:bfcai_task/profile_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var name = TextEditingController();
  var section = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              CustomTextFormField(
                controller: name,
                hintText: "Enter your name",
              ),
              SizedBox(height: 10),
              CustomTextFormField(
                controller: section,
                hintText: "Enter your section",
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: () {
                  var student = name.text.trim();
                  var sec = section.text.trim();
                  if (student.isNotEmpty && sec.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProfileScreen(name: student, section: sec),
                      ),
                    );
                  }
                },
                minWidth: double.infinity,
                color: Colors.blue,
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
