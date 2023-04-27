import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_euvic/currency/cubit/currency_cubit.dart';
import 'package:kantor_euvic/pages/currency_info/view/currency_populated.dart';
import 'package:kantor_euvic/web_api/repositories/currency_repository.dart';

class CurrencyPage extends StatelessWidget {
  final String currencyCode;

  const CurrencyPage({
    required this.currencyCode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrencyCubit(CurrencyRepository()),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: CurrencyPopulated(
            ),
          ),
        ),
      ),
    );
  }
}
