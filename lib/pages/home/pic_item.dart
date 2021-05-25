import 'package:flutter/material.dart';

class PicItem extends StatelessWidget {
  final String imgSrc;
  final String content;

  const PicItem({Key? key, required this.imgSrc, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.network(imgSrc), Text(content)],
    );
  }
}
