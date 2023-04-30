import 'package:flutter/material.dart';
import 'package:kantor_euvic/theme/app_colors.dart';

class CurrencyLoading extends StatelessWidget {
  const CurrencyLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppColors.blue,
      ),
    );
  }
}
