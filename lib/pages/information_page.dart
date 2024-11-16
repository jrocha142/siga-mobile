import 'package:flutter/material.dart';
import 'package:siga_alunos/pages/information/frequency_page.dart';
import 'package:siga_alunos/pages/information/grades_page.dart';
import 'package:siga_alunos/pages/information/agenda/schedule_page.dart';
import 'package:siga_alunos/pages/information/solicitation_page.dart';
import 'package:siga_alunos/pages/information/teaching_plan_page.dart';
import 'package:siga_alunos/pages/information/upload_page.dart';
import 'package:siga_alunos/pages/information/warning_page.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:siga_alunos/util/components/info_card.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 22),
        child: ListView( 
          children: [
            Center(
              child: Text(
                'Informações',
                style: AppTextStyles.informationTitleTxt,
              ),
            ),
            const SizedBox(height: 32), 
            InfoCard(infoName: 'Notas Parciais', color: Colors.purple, onTap: navigateToGradesPage),
            const SizedBox(height: 8), 
            InfoCard(infoName: 'Faltas Parciais', color: Colors.green, onTap: navigateToFrequencyPage),
            const SizedBox(height: 8), 
            InfoCard(infoName: 'Solicitações', color: Colors.yellow, onTap: navigateToSolicitationPage),
            const SizedBox(height: 8), 
            InfoCard(infoName: 'Agenda', color: Colors.blue, onTap: navigateToSchedulePage),
            const SizedBox(height: 8), 
            InfoCard(infoName: 'Comunicados', color: Colors.orange, onTap: navigateToWarningPage),
            const SizedBox(height: 8), 
            InfoCard(infoName: 'Planos de Ensino', color: Colors.teal, onTap: navigateToTeachingPlanPage),
            const SizedBox(height: 8), 
            InfoCard(infoName: 'Upload de Arquivos', color: Colors.red, onTap: navigateToUploadPage),
          ],
        ),
      ),
    );
  }

  void navigateToGradesPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GradesPage()), 
    );
  }

  void navigateToFrequencyPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FrequencyPage()),
    );
  }

  void navigateToSolicitationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SolicitationPage()),
    );
  }

  void navigateToSchedulePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SchedulePage()), 
    );
  }

  void navigateToWarningPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WarningPage()), 
    );
  }

  void navigateToTeachingPlanPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TeachingPlanPage()), 
    );
  }

  void navigateToUploadPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UploadPage()), // Substitua por sua página
    );
  }
}
