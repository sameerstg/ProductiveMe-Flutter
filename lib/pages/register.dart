import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:productive_me/src/auth.dart';

import '../utils/routes.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final String errorMessage = " ";
  final User? user = Auth().currentUser;

  Future<void> registerInWithEmailAndPassword() async {
    try {
      await Auth().createUserwithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message!;
      });
    }
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter email';
                              }

                              return null;
                            },
                            decoration:
                                const InputDecoration(hintText: "Email"),
                            onChanged: (value) => setState(() {}),
                          ),
                          TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter password';
                              }
                              return null;
                            },
                            obscureText: true,
                            keyboardType: TextInputType.emailAddress,
                            decoration:
                                const InputDecoration(hintText: "Password"),
                          ),
                          TextFormField(
                            controller: confirmPasswordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Confirm password';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Confirm Password"),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 13, 210, 255)),
                            height: 30,
                            width: 120,
                            alignment: Alignment.center,
                            child: const Text("Humm ? $errorMessage"),
                          ),
                          InkWell(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, Routes.mainmenu);
                              } else {}
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 13, 210, 255)),
                              height: 30,
                              width: 120,
                              alignment: Alignment.center,
                              child: const Text(
                                "Register",
                              ),
                            ),
                          ),
                        ],
                      )),
                ])));
  }
}
