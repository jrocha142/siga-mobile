import 'package:flutter/material.dart';
import 'package:siga_alunos/constructors/char_data.dart';
import 'package:siga_alunos/themes/app_colors.dart';
import 'package:siga_alunos/themes/app_text_styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ChartData> chartData = [
    ChartData(2010, 35),
    ChartData(2011, 28),
    ChartData(2012, 34),
    ChartData(2013, 32),
    ChartData(2014, 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.twilightBlue,
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            Text(
              'siga',
              style: AppTextStyles.titleTxtPt1,
            ),
            Text(
              'ALUNOS',
              style: AppTextStyles.titleTxtPt2,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12, top: 40),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  width: 375,
                  height: 125,
                  decoration: BoxDecoration(
                    color: AppColors.matteBlack,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nome: João Pedro Rocha',
                          style: AppTextStyles.mainContainerTxt,
                        ),
                        Text(
                          'RA: 00000000000',
                          style: AppTextStyles.mainContainerTxt,
                        ),
                        Text(
                          'E-mail: joao.rocha26@fatec.sp.gov.br',
                          style: AppTextStyles.mainContainerTxt,
                        ),
                        Text(
                          'Rendimento no curso: 21%',
                          style: AppTextStyles.mainContainerTxt,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: 375,
              height: 375,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.matteBlack,
                borderRadius: BorderRadius.circular(12),
              ),
              child: SfCartesianChart(
                  series: <CartesianSeries>[
                      LineSeries<ChartData, int>(
                          dataSource: chartData,
                          dashArray: <double>[5, 5],
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y
                      )
                  ]
              )
            )
          ],
        ),
      ),
    );
  }
}