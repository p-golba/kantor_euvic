import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kantor_euvic/pages/currency_info/widgets/action_button.dart';
import 'package:kantor_euvic/pages/currency_info/widgets/currency_bottom_sheet.dart';
import 'package:kantor_euvic/theme/app_colors.dart';
import 'package:kantor_euvic/web_api/models/currency.dart';

class CurrencyPopulated extends StatelessWidget {
  final String currencyCode;
  final List<Currency> currencyList;

  const CurrencyPopulated({
    required this.currencyCode,
    required this.currencyList,
    Key? key,
  }) : super(key: key);

  double angleBasedOnValue(double mid) {
    if (mid > currencyList.first.mid.to2DecimalPlaces) return -pi / 2;
    if (mid < currencyList.first.mid.to2DecimalPlaces) return pi / 2;
    return 0.0;
  }

  Color colorBasedOnValue(double mid) {
    if (mid > currencyList.first.mid.to2DecimalPlaces) return AppColors.green;
    if (mid < currencyList.first.mid.to2DecimalPlaces) return AppColors.red;
    return AppColors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ActionButton(
              onTap: () {
                Navigator.of(context).pop();
              },
              border: null,
              icon: const Icon(
                Icons.keyboard_arrow_left,
              ),
            ),
            Text(
              currencyCode == 'usd'
                  ? AppLocalizations.of(context)!.dollar.toUpperCase()
                  : AppLocalizations.of(context)!.euro.toUpperCase(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ActionButton(
              onTap: () {
                Scaffold.of(context).showBottomSheet(
                  (context) => CurrencyBottomSheet(
                    currencyList: currencyList,
                  ),
                );
              },
              border: Border.all(
                color: AppColors.blue,
              ),
              icon: const Icon(
                Icons.show_chart,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currencyList.first.effectiveDate,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            Text(
              currencyList.first.mid.toStringAsFixed(2),
              style: TextStyle(
                color: AppColors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 64,
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: currencyList.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const SizedBox();
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    currencyList[index].effectiveDate,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Transform.rotate(
                    angle: angleBasedOnValue(
                      currencyList[index].mid.to2DecimalPlaces,
                    ),
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/triangle_color.svg',
                          color: colorBasedOnValue(
                            currencyList[index].mid.to2DecimalPlaces,
                          ),
                        ),
                        SvgPicture.asset('assets/triangle_border.svg'),
                      ],
                    ),
                  ),
                  Text(
                    currencyList[index].mid.toStringAsFixed(2),
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: colorBasedOnValue(
                        currencyList[index].mid.to2DecimalPlaces,
                      ),
                      fontSize: 36,
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

extension on double {
  double get to2DecimalPlaces => ((this * 100.0).round().toDouble() / 100.0);
}
