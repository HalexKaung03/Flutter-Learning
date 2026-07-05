import 'package:flutter/material.dart';

class Ex35PopupMenuButton extends StatefulWidget {
  const Ex35PopupMenuButton({super.key});

  @override
  State<Ex35PopupMenuButton> createState() => _Ex35PopupMenuButtonState();
}

class _Ex35PopupMenuButtonState extends State<Ex35PopupMenuButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu Button'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 'Edit',
                  onTap: () {
                    debugPrint('editOnTap');
                  },
                  child: Text('Edit')),
              PopupMenuItem(
                  value: 'Delete',
                  onTap: () {
                    debugPrint('deleteOnTap');
                  },
                  child: Text('Delete')),
            ],
            position: PopupMenuPosition.under,
            onOpened: () {
              debugPrint('Open');
            },
            onCanceled: () {
              debugPrint('Cancel');
            },
            onSelected: (value) {
              debugPrint('selected : $value');
            },
          ),
        ],
      ),
    );
  }
}
