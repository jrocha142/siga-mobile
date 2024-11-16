import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';

class WarningPage extends StatefulWidget {
  const WarningPage({super.key});

  @override
  State<WarningPage> createState() => _WarningPageState();
}

class _WarningPageState extends State<WarningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Comunicados',
                    style: AppTextStyles.infoSectionTitlteTxt,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24,),
              Text(
                'Nesta página ficarão os comunicados de seus professores e orientadores',
                style: GoogleFonts.lexendDeca(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}