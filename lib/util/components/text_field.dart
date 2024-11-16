import 'package:flutter/material.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.controller, required this.hintText});

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 52,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(12)
        ),
        child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                hintText: hintText
            ),
            style: AppTextStyles.textFieldTxt,
        ),
    );
  }
}