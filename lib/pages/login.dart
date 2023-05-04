import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String username = "";
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
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
            padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
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
                                return 'Please enter username';
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
                              controller: passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter password';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration:
                                  const InputDecoration(hintText: "Password")),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.accounts);
                            },
                            child: Container(
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "Forget Password",
                                )),
                          ),
                          const SizedBox(
                            height: 10,
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
                                "Login",
                              ),
                            ),
                          ),
                        ],
                      )),
                ])));
  }
}
