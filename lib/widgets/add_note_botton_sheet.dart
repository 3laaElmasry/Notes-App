import 'package:flutter/material.dart';

import 'package:notes_app/widgets/custom_add_buttom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: AddNoteFrom(),
    );
  }
}

class AddNoteFrom extends StatefulWidget {
  const AddNoteFrom({
    super.key,
  });

  @override
  State<AddNoteFrom> createState() => _AddNoteFromState();
}

class _AddNoteFromState extends State<AddNoteFrom> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidate = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidate,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: "Title",
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hintText: "Content",
              maxLigns: 5,
            ),
            const SizedBox(
              height: 100,
            ),
            CustomAddBotton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autoValidate = AutovalidateMode.always;
                  setState(() {});
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
