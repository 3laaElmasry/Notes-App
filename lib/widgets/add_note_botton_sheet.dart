import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_add_buttom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: "Title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: "Content",
              maxLigns: 5,
            ),
            SizedBox(
              height: 100,
            ),
            CustomAddBotton()
          ],
        ),
      ),
    );
  }
}
