import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:nawras_manager/Constants/ColorConstants.dart';
import 'package:nawras_manager/Constants/AppTextStyle.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double totalView = 2600;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Chip(label: Text('Today')),
                SizedBox(width: 10),
                Chip(label: Text('Week')),
                SizedBox(width: 10),
                Chip(label: Text('Month')),
                SizedBox(width: 10),
                Chip(label: Text('Year')),
                SizedBox(width: 10),
                Chip(label: Text('All')),
                SizedBox(width: 10),
              ],
            ),
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: LabelCircularChart(
                  label: 'Total Approve',
                  value: 70,
                  color: Colors.green,
                ),
              ),
              Expanded(
                child: LabelCircularChart(
                  label: 'Total Reject',
                  value: 20,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          LabelCircularChart(
            label: 'Total Pending',
            value: 10,
            color: Colors.blue,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total', style: AppTextStyle.boldTitle30),
                        SizedBox(height: 150),
                        Text('2,600', style: AppTextStyle.boldTitle18),
                        Text(
                          'view',
                          style: AppTextStyle.boldTitle14
                              .copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(totalView.toStringAsFixed(0)),
                      SizedBox(height: 80),
                      Text((totalView / 2).toStringAsFixed(0)),
                      SizedBox(height: 80),
                      Text('0'),
                    ],
                  ),
                  LabelRectangularChart(
                    label: 'Approve',
                    value: 70,
                    color: Colors.green,
                  ),
                  LabelRectangularChart(
                    label: 'Reject',
                    value: 20,
                    color: Colors.red,
                  ),
                  LabelRectangularChart(
                    label: 'Pending',
                    value: 10,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LabelRectangularChart extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const LabelRectangularChart({
    Key key,
    @required this.label,
    @required this.value,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double currentValue = value * 2;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '234',
            style: AppTextStyle.boldTitle12,
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 30,
            color: PaletteColors.cardColorApp,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: currentValue,
                    width: 50,
                    color: color,
                  ),
                  bottom: 0,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: AppTextStyle.boldTitle10,
          ),
        ],
      ),
    );
  }
}

class LabelCircularChart extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const LabelCircularChart({
    Key key,
    @required this.label,
    @required this.value,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double currentValue = value;
    double remainValue = 100 - value;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: AppTextStyle.boldTitle20),
            AnimatedCircularChart(
              size: Size(140, 140),
              initialChartData: <CircularStackEntry>[
                new CircularStackEntry(
                  <CircularSegmentEntry>[
                    new CircularSegmentEntry(
                      currentValue,
                      color,
                      rankKey: 'completed',
                    ),
                    new CircularSegmentEntry(
                      remainValue,
                      PaletteColors.cardColorApp,
                      rankKey: 'remaining',
                    ),
                  ],
                  rankKey: 'progress',
                ),
              ],
              chartType: CircularChartType.Radial,
              percentageValues: true,
              holeLabel: '${currentValue.toString()}%',
              labelStyle: new TextStyle(
                color: Colors.blueGrey[600],
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
