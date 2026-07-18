import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.hintTextData,
    required this.iconData,
    this.isObscureText = false,
    this.suffixIconData,
  });

  final String hintTextData;
  final Icon iconData;
  final bool isObscureText;
  final Widget? suffixIconData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: iconData,
        suffixIcon: suffixIconData,
        hintText: hintTextData,
        hintStyle: const TextStyle(fontSize: 14),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    super.key,
    required this.buttonName,
  });

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 20),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(),
        elevation: 8,
      ),
      child: Text(
        buttonName,
        style: const TextStyle(fontSize: 16),
      ),
      onPressed: () {},
    );
  }
}
