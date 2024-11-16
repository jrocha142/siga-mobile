import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:siga_alunos/util/components/teaching_plan_card.dart';

class TeachingPlanPage extends StatelessWidget {
  const TeachingPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Plano de Ensino',
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
              const SizedBox(height: 48,),
              Expanded(
                child: ListView(
                  children: [
                    TeachingPlanCard(
                      color: AppColors.skyBlue, 
                      subjectCode: 'IES100', 
                      subjectName: 'Engenharia de Software', 
                      icon: const Icon(
                        Icons.build,
                        size: 24,
                        color: AppColors.skyBlue,
                      ), 
                      onTap:() {
                        _showSubjectTeachingPlanDialog(
                          context, 
                          'Engenharia de Software',
                          AppColors.skyBlue, 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          80,
                        );
                      } 
                    ),
                    TeachingPlanCard(
                      color: AppColors.grassGreen, 
                      subjectCode: 'ILP010', 
                      subjectName: 'Linguagem de Programação II', 
                      icon: const Icon(
                        Icons.code,
                        size: 24,
                        color: AppColors.grassGreen,
                      ), 
                      onTap:() {
                        _showSubjectTeachingPlanDialog(
                          context, 
                          'Linguagem de Programação II',
                          AppColors.grassGreen, 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          80,
                        );
                      } 
                    ),
                    TeachingPlanCard(
                      color: AppColors.lightPurple, 
                      subjectCode: 'ILP022', 
                      subjectName: 'Programação em Scripts', 
                      icon: const Icon(
                        Icons.computer,
                        size: 24,
                        color: AppColors.lightPurple,
                      ), 
                      onTap:() {
                        _showSubjectTeachingPlanDialog(
                          context, 
                          'Programação em Scripts',
                          AppColors.lightPurple, 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          80,
                        );
                      } 
                    ),
                    TeachingPlanCard(
                      color: AppColors.limeGreen, 
                      subjectCode: 'ISI022', 
                      subjectName: 'Sistemas de Informação', 
                      icon: const Icon(
                        Icons.storage,
                        size: 24,
                        color: AppColors.limeGreen,
                      ), 
                      onTap:() {
                        _showSubjectTeachingPlanDialog(
                          context, 
                          'Sistemas de Informação',
                          AppColors.limeGreen, 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          80,
                        );
                      } 
                    ),
                    TeachingPlanCard(
                      color: Colors.deepOrangeAccent, 
                      subjectCode: 'LPO001', 
                      subjectName: 'Comunicação e Expressão', 
                      icon: const Icon(
                        Icons.chat,
                        size: 24,
                        color: Colors.deepOrangeAccent,
                      ), 
                      onTap:() {
                        _showSubjectTeachingPlanDialog(
                          context, 
                          'Comunicação e Expressão',
                          Colors.deepOrangeAccent, 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          80,
                        );
                      } 
                    ),
                    TeachingPlanCard(
                      color: Colors.teal, 
                      subjectCode: 'MCA002', 
                      subjectName: 'Cálculo', 
                      icon: const Icon(
                        Icons.functions,
                        size: 24,
                        color: Colors.teal,
                      ), 
                      onTap:() {
                        _showSubjectTeachingPlanDialog(
                          context, 
                          'Cálculo',
                          Colors.teal, 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          80,
                        );
                      } 
                    ),
                    TeachingPlanCard(
                      color: Colors.orange, 
                      subjectCode: 'ISO100', 
                      subjectName: 'Sistemas Operacionais I', 
                      icon: const Icon(
                        Icons.terminal,
                        size: 24,
                        color: Colors.orange,
                      ), 
                      onTap:() {
                        _showSubjectTeachingPlanDialog(
                          context, 
                          'Sistemas Operacionais I',
                          Colors.orange, 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", 
                          80,
                        );
                      } 
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSubjectTeachingPlanDialog(BuildContext context, String subjectName, Color color, String description, String objective, int totalWorkload) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.twilightBlue,
          title: Text(
            'Plano de Ensino - $subjectName',
            style: GoogleFonts.lexendDeca(
              color: color,
              fontSize: 18,
              fontWeight: FontWeight.w400
            ),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24,),
              Text(
                'Ementa',
                style: GoogleFonts.lexendDeca(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: GoogleFonts.lexendDeca(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 12,),
              Text(
                'Objetivo',
                style: GoogleFonts.lexendDeca(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                objective,
                style: GoogleFonts.lexendDeca(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 12,),
              Text(
                'Carga total: $totalWorkload aulas',
                style: GoogleFonts.lexendDeca(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}