import 'package:flutter/material.dart';
import 'package:kantor_euvic/theme/app_colors.dart';
import 'package:kantor_euvic/web_api/models/currency.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrencyPopulated extends StatelessWidget {
  final List<Currency> currencyList;

  const CurrencyPopulated({
    required this.currencyList,
    Key? key,
  }) : super(key: key);

  Color checkIfHigherOrLower(double mid) {
    if (mid > currencyList.first.mid) return AppColors.green;
    if (mid < currencyList.first.mid) return AppColors.red;
    return AppColors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
        vertical: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: AppColors.yellow,
                    border: Border.all(color: AppColors.blue, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                ),
              ),
              Text(
                'Dollar'.toUpperCase(),
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: AppColors.yellow,
                    border: Border.all(color: AppColors.blue, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(
                    Icons.bar_chart,
                  ),
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
                if(index == 0) {
                  return SizedBox();
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      currencyList[index].effectiveDate,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset(
                          'assets/triangle_color.svg',
                          color: checkIfHigherOrLower(
                            currencyList[index].mid,
                          ),
                        ),
                        SvgPicture.asset('assets/triangle_border.svg'),
                      ],
                    ),
                    Text(
                      currencyList[index].mid.toStringAsFixed(2),
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: checkIfHigherOrLower(currencyList[index].mid),
                        fontSize: 36,
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
