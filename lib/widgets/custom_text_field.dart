import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constatns_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: const TextStyle(color: kPrimaryColor, fontSize: 20),
        border: customOutLineBorder(),
        enabledBorder: customOutLineBorder(),
        focusedBorder: customOutLineBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder customOutLineBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
