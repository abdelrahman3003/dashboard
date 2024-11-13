import 'package:dashboard/model/pichard_model.dart';
import 'package:dashboard/utils/app_colors.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PicharDrawDetailed extends StatefulWidget {
  const PicharDrawDetailed({super.key, required this.pichardModelLIst});
  final List<PichardModel> pichardModelLIst;
  @override
  State<PicharDrawDetailed> createState() => _PiechartDrawState();
}

int activeIndex = -1;

class _PiechartDrawState extends State<PicharDrawDetailed> {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionDataList = List.generate(
      4,
      (index) => PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == index ? -.6 : null,
          color: widget.pichardModelLIst[index].color,
          value: widget.pichardModelLIst[index].value,
          showTitle: true,
          radius: activeIndex == index ? 60 : 50,
          title: activeIndex == index
              ? widget.pichardModelLIst[index].title
              : "${widget.pichardModelLIst[index].value}%",
          titleStyle: AppStyles.style14font400black(context).copyWith(
              color: activeIndex == index ? AppColors.black : AppColors.white)),
    );
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: pieChartSectionDataList,
        sectionsSpace: 0,
      ),
      swapAnimationDuration: const Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
  }
}
