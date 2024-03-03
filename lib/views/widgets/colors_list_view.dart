import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class NotesColorList extends StatefulWidget {
  const NotesColorList({super.key});

  @override
  State<NotesColorList> createState() => _NotesColorListState();
}

class _NotesColorListState extends State<NotesColorList> {
  List<Color> colors = const [
    Color(0xffbfae48),
    Color(0xff8c8e61),
    Color(0xff596d7a),
    Color(0xffe0fbfc),
    Color(0xffe7b4a5),
    Color(0xffee6c4d),
    Color(0xffe4d8d1),
    Color(0xff737e6e),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
