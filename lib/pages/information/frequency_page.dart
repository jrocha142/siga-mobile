import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/pages/home.dart';
import 'package:siga_alunos/pages/information_page.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FrequencyPage extends StatefulWidget {
  const FrequencyPage({super.key});

  @override
  State<FrequencyPage> createState() => _FrequencyPageState();
}

class _FrequencyPageState extends State<FrequencyPage> {
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
                    'Faltas',
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
              const SizedBox(height: 36,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                width: 444,
                height: 408,
                decoration: BoxDecoration(
                  color: AppColors.matteBlack,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DataTable(
                  columnSpacing: 20,
                  columns: [
                    DataColumn(
                      label: Text(
                        'Disciplina',
                        style: GoogleFonts.lexendDeca(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                    DataColumn(
                      label: Text(
                        'Presenças',
                        style: GoogleFonts.lexendDeca(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                    DataColumn(
                      label: Text(
                        'Ausências',
                        style: GoogleFonts.lexendDeca(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ),
                  ],
                  rows: [
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'Engenharia de Software',
                            style: GoogleFonts.lexend(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '36',
                            style: GoogleFonts.lexend(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '4',
                            style: GoogleFonts.lexend(
                              color: Colors.orange,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                      ]
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'Linguagem de Programação',
                            style: GoogleFonts.lexend(
                              color: AppColors.skyBlue,
                              fontSize: 14,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '32',
                            style: GoogleFonts.lexend(
                              color: AppColors.skyBlue,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '10',
                            style: GoogleFonts.lexend(
                              color: AppColors.skyBlue,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                      ]
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'Programação em Scripts',
                            style: GoogleFonts.lexend(
                              color: Colors.teal,
                              fontSize: 14,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '28',
                            style: GoogleFonts.lexend(
                              color: Colors.teal,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '8',
                            style: GoogleFonts.lexend(
                              color: Colors.teal,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                      ]
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'Sistemas de Informação',
                            style: GoogleFonts.lexend(
                              color: AppColors.grassGreen,
                              fontSize: 14,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '24',
                            style: GoogleFonts.lexend(
                              color: AppColors.grassGreen,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '10',
                            style: GoogleFonts.lexend(
                              color: AppColors.grassGreen,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                      ]
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'Sistemas Operacionais',
                            style: GoogleFonts.lexend(
                              color: AppColors.lightPurple,
                              fontSize: 14,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '20',
                            style: GoogleFonts.lexend(
                              color: AppColors.lightPurple,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '12',
                            style: GoogleFonts.lexend(
                              color: AppColors.lightPurple,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                      ]
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Container(
                            width: 150,
                            child: Text(
                              'Comunicação e Expressão',
                              style: GoogleFonts.lexend(
                                color: AppColors.limeGreen,
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                              ),
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '40',
                            style: GoogleFonts.lexend(
                              color: AppColors.limeGreen,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '8',
                            style: GoogleFonts.lexend(
                              color: AppColors.limeGreen,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                      ]
                    ),
                    DataRow(
                      cells: [
                        DataCell(
                          Text(
                            'Cálculo',
                            style: GoogleFonts.lexend(
                              color: Colors.amber,
                              fontSize: 14,
                              fontWeight: FontWeight.w300
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '32',
                            style: GoogleFonts.lexend(
                              color: Colors.amber,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                        DataCell(
                          Text(
                            '16',
                            style: GoogleFonts.lexend(
                              color: Colors.amber,
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                            ),
                          )
                        ),
                      ]
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}