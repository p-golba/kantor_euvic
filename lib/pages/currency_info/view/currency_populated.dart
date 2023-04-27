import 'package:flutter/material.dart';
import 'package:kantor_euvic/theme/app_colors.dart';
import 'package:kantor_euvic/web_api/models/currency.dart';

class CurrencyPopulated extends StatelessWidget {

  const CurrencyPopulated({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  iconSize: 24,
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_rounded),
                ),
              ),
              Expanded(
                child: Text(
                  'Dollar'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('23.04.2023'),
              Text('4.61'),
            ],
          )
        ],
      ),
    );
  }
}
