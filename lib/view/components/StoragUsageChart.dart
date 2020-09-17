import 'package:file_manager/constants.dart';
import 'package:file_manager/view/models/StorageUsage.dart';
import 'package:file_manager/view/models/StorageViewModel.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StorageUsageChart extends StatelessWidget {
  StorageUsageChart({
    Key key,
  }) : super(key: key);

  final List<StorageUsageViewModel> usageStats = [
    StorageUsageViewModel(
      usage: "Free",
      percent: 30.0,
      color: kAccentColor,
    ),
    StorageUsageViewModel(
      usage: "Used",
      percent: 70.0,
      color: kBackgroundColor,
    ),
  ];

  final StorageViewModel storage = StorageViewModel(capacity: 300, used: 230);

  final double totalStorag = 200;

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      annotations: <CircularChartAnnotation>[
        CircularChartAnnotation(
          widget: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      storage.used.toStringAsFixed(0),
                      style: Theme.of(context).primaryTextTheme.headline4,
                    ),
                    Text(
                      "GB",
                      style: Theme.of(context).primaryTextTheme.bodyText2,
                    ),
                  ],
                ),
                Text(
                  "${storage.percentUsed.toStringAsFixed(0)}% used",
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
      ],
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CircularSeries>[
        DoughnutSeries<Map<String, dynamic>, dynamic>(
          enableTooltip: true,
          dataSource: _storageArrayView,
          innerRadius: "70%",
          startAngle: 250,
          endAngle: 250,
          pointColorMapper: (stat, index) => stat["color"],
          xValueMapper: (stat, index) => stat["name"],
          yValueMapper: (stat, index) => stat["amount"],
        ),
      ],
    );
  }

  List<Map<String, dynamic>> get _storageArrayView {
    return [
      {"name": "Free", "amount": storage.available, "color": kAccentColor},
      {"name": "Used", "amount": storage.used, "color": kBackgroundColor},
    ];
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SfCircularChart(
  //     series: <CircularSeries>[
  //       DoughnutSeries<StorageUsageViewModel, dynamic>(
  //         dataSource: usageStats,
  //         startAngle: 250,
  //         endAngle: 250,
  //         radius: '100.0%',
  //         innerRadius: "70.0%",
  //         cornerStyle: CornerStyle.bothFlat,
  //         explodeIndex: 1,
  //         explode: true,
  //         pointColorMapper: (StorageUsageViewModel data, _) => data.color,
  //         xValueMapper: (StorageUsageViewModel data, _) => data.usage,
  //         yValueMapper: (StorageUsageViewModel data, _) => data.percent,
  //       ),
  //     ],
  //   );
  // }
}
