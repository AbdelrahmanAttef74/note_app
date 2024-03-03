import 'package:flutter/material.dart';

class NoteColor extends StatelessWidget {
  const NoteColor({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 38,
      backgroundColor: Colors.blue,
    );
  }
}

class NotesColorList extends StatelessWidget {
  const NotesColorList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const NoteColor();
        },
      ),
    );
  }
}
