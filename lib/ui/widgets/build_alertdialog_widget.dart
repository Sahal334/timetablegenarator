import 'package:flutter/material.dart';

import 'build_text_widget.dart';

class Build_Alertdialog_widget extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const Build_Alertdialog_widget({
    Key? key,
    required this.title,
    required this.content,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      title: BuildTextWidget(
        text: title,
        textColour: Colors.white,
        textSize: 16,
        fontWeight: FontWeight.bold,
      ),
      content: BuildTextWidget(
        text: content,
        textColour: Colors.white,
        textSize: 12,
        fontWeight: FontWeight.bold,
      ),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          onPressed: onCancel,
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: onConfirm,
          child: const Text("Confirm"),
        ),
      ],
    );
  }
}
