import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constatns_file.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLigns = 1, this.onSaved});

  final String hintText;
  final int maxLigns;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required.";
        } else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLigns,
      decoration: InputDecoration(
        hintText: hintText,
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
