import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GradeSection extends StatelessWidget {
  const GradeSection({super.key, required this.color, required this.subjectCode, required this.subjectName, required this.grade});

  final Color color;
  final String subjectCode;
  final String subjectName;
  final double grade;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
      width: 444,
      height: 360,
      decoration: const BoxDecoration(
        color: AppColors.matteBlack,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subjectCode,
                style: GoogleFonts.lexendDeca(
                  color: color,
                  fontSize: 22,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text(
                subjectName,
                style: GoogleFonts.lexendDeca(
                  color: color,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
                ),
              )
            ],
          ),
          const SizedBox(height: 24,),
          Center(
            child: Row(
              children: [
                Text(
                  'Média Final: ',
                  style: GoogleFonts.lexendDeca(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400
                  ),
                ),
                Text(
                  '$grade',
                  style: GoogleFonts.lexendDeca(
                    color: color,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12,),
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  'Avaliação',
                  style: AppTextStyles.columnLableTxt,
                )
              ),
              DataColumn(
                label: Text(
                  'Lançamento',
                  style: AppTextStyles.columnLableTxt,
                )
              ),
              DataColumn(
                label: Text(
                  'Nota',
                  style: AppTextStyles.columnLableTxt,
                )
              ),
            ], 
            rows: [
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'P1',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                  DataCell(
                    Text(
                      '12/10/24',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                  DataCell(
                    Text(
                      '6.5',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                ]
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'P2',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                  DataCell(
                    Text(
                      '13/11/24',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                  DataCell(
                    Text(
                      '7.3',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                ]
              ),
              DataRow(
                cells: [
                  DataCell(
                    Text(
                      'T',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                  DataCell(
                    Text(
                      '15/11/24',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                  DataCell(
                    Text(
                      '8.5',
                      style: AppTextStyles.rowCellTxt,
                    )
                  ),
                ]
              ),
            ]
          )
        ],
      ),
    );
  }
}