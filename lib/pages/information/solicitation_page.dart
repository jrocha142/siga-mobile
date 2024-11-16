import 'package:flutter/material.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:siga_alunos/util/components/solicitation_card.dart';

class SolicitationPage extends StatefulWidget {
  const SolicitationPage({super.key});

  @override
  State<SolicitationPage> createState() => _SolicitationPageState();
}

class _SolicitationPageState extends State<SolicitationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Solicitações',
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
              const SolicitationCard(solicitation: 'Revisão de Faltas', color: Colors.orange,),
              const SizedBox(height: 24,),
              const SolicitationCard(solicitation: 'Revisão de Notas', color: AppColors.lightPurple,),
              const SizedBox(height: 24,),
              const SolicitationCard(solicitation: 'Exame Geral', color: AppColors.skyBlue,),
              const SizedBox(height: 24,),
              const SolicitationCard(solicitation: 'Solicitação de Documentos', color: AppColors.grassGreen,),
              const SizedBox(height: 24,),
              const SolicitationCard(solicitation: 'Regime de Exercícios Domiciliares', color: AppColors.limeGreen,),
            ],
          ),
        ),
      ),
    );
  }
}