import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/themes/app_colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.infoName,
    required this.color,
    required this.onTap, 
  });

  final String infoName; 
  final Color color;    
  final VoidCallback onTap; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 24),
        margin: const EdgeInsets.only(bottom: 8),
        width: 372,
        height: 84,
        decoration: BoxDecoration(
          color: AppColors.matteBlack,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              infoName, 
              style: GoogleFonts.lexendDeca(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            Icon(
              Icons.exit_to_app,
              size: 30,
              color: color,
            )
          ],
        ),
      ),
    );             
  }
}
