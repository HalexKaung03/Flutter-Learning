import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_course/ex2_loginIU/sign_up.dart';
import 'package:flutter_course/ex2_loginIU/widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Sign In')),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            right: -30,
            top: -70,
            child: CircleAvatar(
              backgroundColor: Colors.indigo.shade100,
              radius: 80,
            ),
          ),
          const Positioned(
            right: -40,
            top: -80,
            child: CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 78,
            ),
          ),
          Positioned(
            left: 25,
            bottom: -100,
            child: CircleAvatar(
              backgroundColor: Colors.indigo.shade100,
              radius: 78,
            ),
          ),
          const Positioned(
            left: 28,
            bottom: -100,
            child: CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 70,
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
                          'Sign In',
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
                                ))),
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
                            buttonName: 'SIGN IN',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Center(
                            child: Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Doesn't have an account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (_) => const SignUp()));
                                },
                                child: const Text(
                                  'Sign Up',
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
