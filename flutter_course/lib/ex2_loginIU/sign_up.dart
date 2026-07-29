// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_course/ex2_loginIU/sign_in.dart';
import 'package:flutter_course/ex2_loginIU/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Sign In')),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: 60,
            top: -100,
            child: CircleAvatar(
              backgroundColor: Colors.indigo.shade100,
              radius: 85,
            ),
          ),
          const Positioned(
            right: 75,
            top: -100,
            child: CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 78,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 28),
                    // color: Colors.greenAccent,
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        blurStyle: BlurStyle.outer,
                        color: Colors.black26,
                        offset: Offset(1, 1),
                      )
                    ]),
                    width: 400,
                    // height: 460,
                    // margin: const EdgeInsets.only(right: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const DecoratedBox(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                blurStyle: BlurStyle.outer,
                                color: Colors.black26,
                                offset: Offset(1, 1),
                              )
                            ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: MyTextField(
                                hintTextData: 'Name',
                                iconData: Icon(Icons.person),
                              ),
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const DecoratedBox(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                blurStyle: BlurStyle.outer,
                                color: Colors.black26,
                                offset: Offset(1, 1),
                              )
                            ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: MyTextField(
                                hintTextData: 'Email',
                                iconData: Icon(Icons.email),
                              ),
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const DecoratedBox(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                blurStyle: BlurStyle.outer,
                                color: Colors.black26,
                                offset: Offset(1, 1),
                              )
                            ]),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: MyTextField(
                                hintTextData: 'Phone Number',
                                iconData: Icon(Icons.phone),
                              ),
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const DecoratedBox(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                                blurStyle: BlurStyle.outer,
                                color: Colors.black26,
                                offset: Offset(1, 1),
                              )
                            ]),
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: MyTextField(
                                  hintTextData: 'Password',
                                  iconData: Icon(Icons.lock),
                                  isObscureText: true,
                                  suffixIconData: Icon(Icons.visibility_off),
                                ))),
                        const SizedBox(
                          height: 40,
                        ),
                        const SizedBox(
                            width: double.infinity,
                            child: MyElevatedButton(
                              buttonName: 'SIGN UP',
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (_) => const SignIn()));
                                },
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Colors.indigo),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
