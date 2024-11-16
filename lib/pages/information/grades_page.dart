import 'package:flutter/material.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:siga_alunos/util/components/grade_section.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({super.key});

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notas',
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      
                      GradeSection(
                        subjectCode: 'IES100',
                        subjectName: 'Engenharia de Software',
                        grade: 7.8,
                        color: AppColors.skyBlue,
                      ),
                      const SizedBox(height: 16,),
                     
                      GradeSection(
                        subjectCode: 'ILP010',
                        subjectName: 'Linguagem de Programação',
                        grade: 6.4,
                        color: AppColors.grassGreen,
                      ),
                      const SizedBox(height: 16,),

                      GradeSection(
                        subjectCode: 'ILP022',
                        subjectName: 'Programação em Scripts',
                        grade: 5.4,
                        color: AppColors.lightPurple,
                      ),
                      const SizedBox(height: 16,),

                      GradeSection(
                        subjectCode: 'ISI022',
                        subjectName: 'Sistemas de Informação',
                        grade: 9.2,
                        color: AppColors.limeGreen,
                      ),
                      const SizedBox(height: 16,),

                      GradeSection(
                        subjectCode: 'LPO001',
                        subjectName: 'Comunicação e Expressão',
                        grade: 4.3,
                        color: Colors.orange,
                      ),
                      const SizedBox(height: 16,),

                      GradeSection(
                        subjectCode: 'MCA002',
                        subjectName: 'Cálculo',
                        grade: 8.5,
                        color: Colors.orange,
                      ),
                      const SizedBox(height: 16,),

                      GradeSection(
                        subjectCode: 'ISO100',
                        subjectName: 'Sistemas Operacionais I',
                        grade: 6.4,
                        color: Colors.teal,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}