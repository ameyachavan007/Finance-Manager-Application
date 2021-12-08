import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:save/data/constants.dart';

class TheChart extends StatelessWidget {
  const TheChart({
    Key key,
    @required List<double> moneySpent,
  })  : _moneySpent = moneySpent,
        super(key: key);

  final List<double> _moneySpent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40, left: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            borderData: FlBorderData(show: false),
            maxY: 201,
            barTouchData: BarTouchData(enabled: false),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: SideTitles(
                margin: 10,
                showTitles: true,
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: kDarkSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                getTitles: (double value) {
                  switch (value.toInt()) {
                    case 0:
                      return '11';
                    case 1:
                      return '12';
                    case 2:
                      return '13';
                    case 3:
                      return '14';
                    case 4:
                      return '15';
                    case 5:
                      return '16';
                    default:
                      return '';
                  }
                },
              ),
              leftTitles: SideTitles(
                margin: 10,
                showTitles: true,
                textStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: kDarkSecondaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                getTitles: (value) {
                  if (value == 0) {
                    return '0';
                  } else if (value % 50 == 0) {
                    int print = value.toInt();
                    return '$print';
                  }
                  return '';
                },
              ),
            ),
            gridData: FlGridData(
              show: true,
              checkToShowHorizontalLine: (value) => value % 50 == 0,
              getDrawingHorizontalLine: (value) => FlLine(
                color: kLightSecondaryColor,
                strokeWidth: 2,
                dashArray: [10],
              ),
            ),
            barGroups: _moneySpent
                .asMap()
                .map((key, value) => MapEntry(
                      key,
                      BarChartGroupData(x: key, barRods: [
                        BarChartRodData(
                            y: value, color: kExpenseColor, width: 16),
                      ]),
                    ))
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}
