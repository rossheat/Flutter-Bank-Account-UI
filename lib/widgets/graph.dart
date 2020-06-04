import 'package:banking_ui/data/data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
  final User user;
  Graph({this.user});

  List<Color> gradientColors = [
    Color(0xFF5768ff),
    Color(0xFF834df7),
    Color(0xFF834df7),
  ];

  List<FlSpot> buildGraphPoints() {
    List<FlSpot> graphPoints = [];
    user.monthlyTotalThousands.forEach((month, balance) {
      graphPoints.add(FlSpot(month, balance));
    });
    return graphPoints;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4,
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 16,
                  ),
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        drawHorizontalLine: true,
                        getDrawingHorizontalLine: (value) {
                          if (value % 5 != 0 || value % 2 == 0) {
                            return FlLine(color: Colors.transparent);
                          } else {
                            return FlLine(
                              color: Color(0xFFe6e6f6),
                              strokeWidth: 1.5,
                              dashArray: [6, 5],
                            );
                          }
                        },
                        horizontalInterval: 1,
                      ),
                      titlesData: FlTitlesData(
                        bottomTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                            color: Color(0xFF8662db),
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Mukta',
                            fontSize: 13,
                          ),
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 2:
                                return 'FEB';
                              case 5:
                                return 'MAY';
                              case 8:
                                return 'JUL';
                              case 11:
                                return 'NOV';
                            }
                            return '';
                          },
                          margin: -15,
                        ),
                        leftTitles: SideTitles(showTitles: false),
                        rightTitles: SideTitles(
                          showTitles: true,
                          textStyle: TextStyle(
                            color: Color(0xFF8662db),
                            fontFamily: 'Mukta',
                            fontSize: 12,
                          ),
                          getTitles: (value) {
                            switch (value.toInt()) {
                              case 10:
                                return '\$10k';
                              case 20:
                                return '\$20k';
                              case 30:
                                return '\$30k';
                              case 40:
                                return '\$40k';
                            }
                            return '';
                          },
                          margin: 20,
                          reservedSize: 30,
                        ),
                      ),
                      borderData: FlBorderData(
                        show: false,
                      ),
                      minX: 1,
                      maxX: 12,
                      maxY: 40,
                      minY: 0,
                      lineBarsData: [
                        LineChartBarData(
                          spots: buildGraphPoints(),
                          isCurved: true,
                          isStrokeCapRound: true,
                          colors: gradientColors,
                          barWidth: 4,
                          dotData: FlDotData(
                            show: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
