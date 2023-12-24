import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: pieChartSelectionDatas),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 0.5),
                ),
                Text(
                  "of 128GB",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


List<PieChartSectionData> pieChartSelectionDatas = [
  PieChartSectionData(
      value: 25, color: primaryColor, showTitle: false, radius: 25),
  PieChartSectionData(
      value: 20, color: const Color(0xff26e5ff), showTitle: false, radius: 22),
  PieChartSectionData(
      value: 10, color: const Color(0xffffcf26), showTitle: false, radius: 20),
  PieChartSectionData(
      value: 15, color: const Color(0xffee2727), showTitle: false, radius: 18),
  PieChartSectionData(
      value: 15,
      color: primaryColor.withOpacity(0.1),
      showTitle: false,
      radius: 16),
];