import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(text: "Edit Note", iconName: Icons.check),
              Padding(
                padding: EdgeInsets.only(top: 64),
                child: CustomTextField(
                  hintText: "Title",
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomTextField(
                hintText: "Content",
                maxLigns: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
