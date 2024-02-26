import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

import 'custom_bottom.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 16),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 50),
            CustomBottom(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
