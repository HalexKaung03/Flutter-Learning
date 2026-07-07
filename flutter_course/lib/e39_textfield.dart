import 'package:flutter/material.dart';

class Ex39TextField extends StatefulWidget {
  const Ex39TextField({super.key});

  @override
  State<Ex39TextField> createState() => _Ex39TextFieldState();
}

class _Ex39TextFieldState extends State<Ex39TextField> {
  late final FocusNode focusNode;
  late final TextEditingController controller;

  @override
  void initState() {
    focusNode = FocusNode();
    controller = TextEditingController();
    focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text Field'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                TextField(
                  focusNode: focusNode,
                  controller: controller,
                  onTapOutside: (v) => focusNode.unfocus(),
                  onChanged: (value) => print(value),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    icon: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    hintText: 'Enter your name ...',
                    labelText: 'Name',
                    helperText: 'Example : Kyaw Kyaw',
                    // errorText: 'Name cannot be empty',
                    isDense: true,
                    suffixIcon: Icon(Icons.visibility),
                    filled: true,
                    fillColor: Colors.amber,
                    enabled: true,
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 50,
                  obscureText: false,
                  obscuringCharacter: "*",
                  maxLines: null,
                ),
                ElevatedButton(
                    onPressed: () {
                      debugPrint(controller.text);
                      controller.clear();
                    },
                    child: const Text('Submit')),
              ],
            ),
          ),
        ));
  }
}
