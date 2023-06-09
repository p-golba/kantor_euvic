import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kantor_euvic/pages/currency_info/cubit/currency_cubit.dart';
import 'package:kantor_euvic/pages/currency_info/widgets/widgets.dart';
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
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 35,
                ),
                child: BlocBuilder<CurrencyCubit, CurrencyState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case CurrencyStatus.failure:
                        return const CurrencyFailure();
                      case CurrencyStatus.success:
                        return CurrencyPopulated(
                          currencyCode: currencyCode,
                          currencyList: state.currencyInfo,
                        );
                      case CurrencyStatus.initial:
                        context.read<CurrencyCubit>().fetchCurrency(currencyCode);
                        return const CurrencyLoading();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
