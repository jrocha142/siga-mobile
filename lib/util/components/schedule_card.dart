import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/themes/app_colors.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key, required this.cardText, required this.color, required this.onTap});

  final String cardText;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        width: 384,
        height: 72,
        decoration: BoxDecoration(
          color: AppColors.matteBlack,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cardText,
              style: GoogleFonts.lexendDeca(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
            ),
            Icon(
              Icons.arrow_right,
              size: 28,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}