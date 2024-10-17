import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PerformanceChart extends StatelessWidget {
  const PerformanceChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Over All Performance \nThis year",
              style: TextStyle(color: Colors.grey[500]),
            ),
            _buildLegend(),
          ],
        ),
        const SizedBox(height: 10),
        Flexible(
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: _buildLineChart(),
          ),
        ),
      ],
    );
  }

  Widget _buildLegend() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLegendItem(Colors.blue, 'Project \n Done'),
        const SizedBox(height: 20),
        _buildLegendItem(Colors.red, 'Pending \n Done'),
        const SizedBox(height: 30),
      ],
    );
  }

  static Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
              color: color, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _buildLineChart() {
    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 10,
              getTitlesWidget: (value, meta) {
                return Text(
                  '${value.toInt()}',
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                );
              },
              reservedSize: 30,
            ),
          ),
          rightTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles:
              const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return const Text('2015',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 1:
                    return const Text('2016',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 2:
                    return const Text('2017',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 3:
                    return const Text('2018',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 4:
                    return const Text('2019',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 5:
                    return const Text('2020',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 6:
                    return const Text('2023',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  default:
                    return Container();
                }
              },
              reservedSize: 30,
            ),
          ),
        ),
        minX: 0,
        maxX: 6,
        minY: 0,
        maxY: 55, 
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color: Colors.blue,
            spots: const [
              FlSpot(0, 20),
              FlSpot(1, 30),
              FlSpot(2, 25),
              FlSpot(3, 40),
              FlSpot(4, 30),
              FlSpot(5, 45),
              FlSpot(6, 55),
            ],
            barWidth: 4,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color:
                  Colors.blue.withOpacity(0.15), 
              cutOffY: 50,
              applyCutOffY: true,
            ),
          ),
          LineChartBarData(
            isCurved: true,
            color: Colors.red,
            spots: const [
              FlSpot(0, 30),
              FlSpot(1, 20),
              FlSpot(2, 40),
              FlSpot(3, 30),
              FlSpot(4, 45),
              FlSpot(5, 35),
              FlSpot(6, 50),
            ],
            barWidth: 4,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.red.withOpacity(0.15),
              cutOffY: 50,
              applyCutOffY: true,
            ),
          ),
        ],
        borderData: FlBorderData(show: false), 
      ),
    );
  }
}
