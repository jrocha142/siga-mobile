import 'package:flutter/material.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/pages/information/agenda/exam_calendar_page.dart';
import 'package:siga_alunos/pages/information/agenda/holidays_page.dart';
import 'package:siga_alunos/pages/information/agenda/recess_page.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:siga_alunos/util/components/schedule_card.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Agenda',
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
              const SizedBox(height: 72,),
              ScheduleCard(cardText: 'Calendário de Provas', color: AppColors.limeGreen, onTap: navigateToExamCalendarPage),
              const SizedBox(height: 36,),
              ScheduleCard(cardText: 'Feriados', color: AppColors.skyBlue, onTap: navigateToHolidayPage,),
              const SizedBox(height: 36,),
              ScheduleCard(cardText: 'Recesso', color: Colors.teal, onTap: navigateToRecessPage,),
            ],
          ),
        ),
      ),
    );
  }

  void navigateToExamCalendarPage() {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => ExamCalendarPage())
    );
  }

  void navigateToHolidayPage() {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => HolidaysPage())
    );
  }

  void navigateToRecessPage() {
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => RecessPage())
    );
  }
}