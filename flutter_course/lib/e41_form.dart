import 'dart:developer';

import 'package:flutter/material.dart';

class Ex41Form extends StatefulWidget {
  const Ex41Form({super.key});

  @override
  State<Ex41Form> createState() => _Ex41FormState();
}

class _Ex41FormState extends State<Ex41Form> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            key: formKey,
            canPop: false,
            onPopInvoked: (value) {
              log('can pop  $value');
            },
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Email ...',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password cannot be empty';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password ...',
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                  obscureText: true,
                  obscuringCharacter: '*',
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        debugPrint(emailController.text);
                        debugPrint(passwordController.text);
                        debugPrint('Valide Form. Submitted!');
                      } else {
                        debugPrint('Invalid Form. Cannot be summited!');
                      }
                    },
                    child: const Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
