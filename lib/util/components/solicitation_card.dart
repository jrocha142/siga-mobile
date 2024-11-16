import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/themes/app_colors.dart';

class SolicitationCard extends StatelessWidget {
  const SolicitationCard({super.key, required this.solicitation, required this.color});

  final String solicitation;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
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
            solicitation,
            style: GoogleFonts.lexendDeca(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w400
            ),
          ),
          Icon(
            Icons.arrow_right,
            size: 32,
            color: color,
          )
        ],
      )
    );
  }
}