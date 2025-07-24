import 'package:flutter/material.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({super.key, required this.textUz});

  final String textUz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Text(
        textUz,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15,
          height: 20 / 15,
          color: Color(0xFF0D1B34),
        ),
        textAlign: TextAlign.justify,
        maxLines: 100,
        overflow: TextOverflow.ellipsis,
      ),

    );
  }
}
