import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String username = "";
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
                    TextField(
                      decoration: const InputDecoration(hintText: "Username"),
                      onChanged: (value) => setState(() {
                        username = value;
                      }),
                    ),
                    const TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Password")),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.accounts);
                          },

                          child: Container(

                              alignment: Alignment.centerLeft,


                              child: const Text("Forget Password",)),
                        ),
                        const SizedBox(height: 10,),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.transaction);
                          },

                          child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 13, 210, 255)),
                              height: 30,width: 80,
                              child: const Text("Login",),alignment: Alignment.center),
                        ),
                        const SizedBox(height: 10,),

                      ],
                    )
                  ]))
    );
  }
}
