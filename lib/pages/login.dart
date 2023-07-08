import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:productive_me/pages/login.dart';
import 'package:productive_me/src/auth.dart';

import '../utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String username = "";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? errorMessage;
  final User? user = Auth().currentUser;

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

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
                  Padding(
                      padding: const EdgeInsets.all(1),
                      child: Text(
                        "Welcome $username",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 28, 172, 255),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      )),
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Email';
                              }

                              return null;
                            },
                            decoration: const InputDecoration(
                                hintText: "abcd@domain.com"),
                            onChanged: (value) => setState(() {
                              username = value;
                            }),
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
                              decoration:
                                  const InputDecoration(hintText: "Password")),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.accounts);
                                  },
                                  child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: const Text(
                                        "Forget Password",
                                      )),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.register);
                                  },
                                  child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: const Text(
                                        "Create Account",
                                      )),
                                ),
                              ]),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.pushNamed(
                                    context, Routes.diaryHistory);
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
                                "Login",
                              ),
                            ),
                          ),
                        ],
                      )),
                ])));
  }
}
