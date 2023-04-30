import 'package:flutter/material.dart';
import 'package:kantor_euvic/theme/app_colors.dart';
import 'package:kantor_euvic/web_api/models/currency.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CurrencyBottomSheet extends StatelessWidget {
  final List<Currency> currencyList;

  const CurrencyBottomSheet({
    required this.currencyList,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              Text(
                AppLocalizations.of(context)!.ratesChart.toUpperCase(),
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  letterSpacing: 4,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: SfCartesianChart(
                  plotAreaBorderWidth: 0,
                  primaryXAxis: CategoryAxis(
                    axisLine: const AxisLine(width: 0),
                    desiredIntervals: 2,
                    majorTickLines: const MajorTickLines(
                      size: 0,
                    ),
                    labelStyle: TextStyle(
                      color: AppColors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    majorGridLines: const MajorGridLines(
                      color: Colors.transparent,
                    ),
                  ),
                  primaryYAxis: NumericAxis(
                    axisLine: const AxisLine(
                      width: 0,
                    ),
                    labelStyle: TextStyle(
                      color: AppColors.purple,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    majorTickLines: const MajorTickLines(
                      size: 0,
                    ),
                    majorGridLines: const MajorGridLines(
                      color: Colors.transparent,
                    ),
                    plotOffset: 10,
                    interval: 0.1,
                  ),
                  series: <ChartSeries<Currency, String>>[
                    AreaSeries<Currency, String>(
                      borderColor: AppColors.purple,
                      borderWidth: 3,
                      borderDrawMode: BorderDrawMode.top,
                      dataSource: currencyList.reversed.toList(),
                      xValueMapper: (datum, index) =>
                          datum.effectiveDate.substring(5, 10),
                      yValueMapper: (datum, index) => datum.mid,
                      color: AppColors.yellow,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
