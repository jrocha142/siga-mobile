import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/themes/app_colors.dart';

class TeachingPlanCard extends StatelessWidget {
  const TeachingPlanCard({super.key, required this.color, required this.subjectCode, required this.subjectName, required this.icon, required this.onTap});

  final VoidCallback onTap;
  final Color color;
  final Icon icon;
  final String subjectCode;
  final String subjectName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 6),
        width: 384,
        height: 72,
        decoration: BoxDecoration(
          color: AppColors.matteBlack,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    subjectCode,
                    style: GoogleFonts.lexendDeca(
                      color: color,
                      fontSize: 18,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    subjectName,
                    style: GoogleFonts.lexendDeca(
                      color: color,
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ],
              ),
            ),
            icon
          ],
        ),
      ),
    );
  }
}