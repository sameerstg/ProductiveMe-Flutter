import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String username = "";
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
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
                            controller: usernameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter username';
                              }

                              return null;
                            },
                            decoration:
                                const InputDecoration(hintText: "Username"),
                            onChanged: (value) => setState(() {
                              username = value;
                            }),
                          ),
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
