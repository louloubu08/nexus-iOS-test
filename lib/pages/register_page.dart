// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nexus/components/button.dart';
import 'package:nexus/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmpasswordTextController = TextEditingController();
  final firstnameTextController = TextEditingController();
  final lastnameTextController = TextEditingController();
  final ageTextController = TextEditingController();

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    confirmpasswordTextController.dispose();
    firstnameTextController.dispose();
    lastnameTextController.dispose();
    ageTextController.dispose();
    super.dispose();
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //login

                  const SizedBox(
                    height: 50,
                  ),

                  Text(
                    "HELLO THERE",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 54,
                    ),
                  ),
                  const SizedBox(height: 24),

                  //welcome back message
                  Text(
                    "If we tell people the brain is an app maybe they'll start using it.",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 24),

                  MyTextField(
                    controller: firstnameTextController,
                    hintText: 'First Name',
                    obscureText: false,
                  ),
                  const SizedBox(height: 24),

                  MyTextField(
                    controller: lastnameTextController,
                    hintText: 'Last Name',
                    obscureText: false,
                  ),
                  const SizedBox(height: 24),

                  MyTextField(
                    controller: ageTextController,
                    hintText: 'Age',
                    obscureText: false,
                  ),
                  const SizedBox(height: 24),

                  //email textfield
                  MyTextField(
                    controller: emailTextController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 24),

                  //pasword textfield
                  MyTextField(
                    controller: passwordTextController,
                    hintText: 'Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),

                  MyTextField(
                    controller: confirmpasswordTextController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 24),

                  // sign in button
                  MyButton(
                    onTap: widget.onTap,
                    text: 'Sign Up',
                  ),
                  const SizedBox(height: 0),

                  // go to register page
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Alredy have an account ?",
                          style: TextStyle(
                            color: Colors.grey[700],
                          )),
                      const SizedBox(width: 7),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text("Login now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                      ),
                      const SizedBox(height: 100),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
