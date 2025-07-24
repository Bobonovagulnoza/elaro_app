import 'package:elaro_app/core/constants/app_colors.dart';
import 'package:elaro_app/core/widgets/custom_button.dart';
import 'package:elaro_app/main.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Xush kelibsiz!")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixText: "+998",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
              ),
            ),
            15.height,
            CustomButton(
              text: ("Kirish"),
              onPressed: () {},
              color: AppColor.primary,
            ),
          ],
        ),
      ),
    );
  }
}
