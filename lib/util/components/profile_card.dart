import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/themes/app_colors.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.cardText, required this.color, required this.icon});

  final String cardText;
  final Color color;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        width: 400,
        height: 72,
        decoration: BoxDecoration(
          color: AppColors.matteBlack,
          borderRadius: BorderRadius.circular(12),
        ),      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cardText,
              style: GoogleFonts.lexendDeca(
                fontSize: 16,
                color: color,
                fontWeight: FontWeight.w500
              ),
            ),
            Icon(
              icon.icon,
              size: 24,
              color: color,
            )
          ],
        ),
      ),
    );
  }
}