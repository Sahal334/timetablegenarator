import 'package:flutter/material.dart';

Widget BuildFieldWidget(
  Size size,
  String hintText,
  TextEditingController controller, {
  IconData? icon,
}) {
  return Container(
    height: size.height / 14,
    width: size.width / 1,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        style: TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: Colors.white24,
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : null,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(width: 3, color: Colors.red),
          ),
        ),
      ),
    ),
  );
}
