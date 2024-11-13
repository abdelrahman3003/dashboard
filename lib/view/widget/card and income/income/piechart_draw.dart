import 'package:dashboard/model/pichard_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PiechartDraw extends StatefulWidget {
  const PiechartDraw({super.key, required this.pichardModelLIst});
  final List<PichardModel> pichardModelLIst;

  @override
  State<PiechartDraw> createState() => _PiechartDrawState();
}

class _PiechartDrawState extends State<PiechartDraw> {
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> pieChartSectionDataList = List.generate(
      4,
      (index) => PieChartSectionData(
        color: widget.pichardModelLIst[index].color,
        value: widget.pichardModelLIst[index].value,
        showTitle: false,
      ),
    );
    return PieChart(
      PieChartData(sections: pieChartSectionDataList, sectionsSpace: 0),
      swapAnimationDuration: const Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
  }
}
