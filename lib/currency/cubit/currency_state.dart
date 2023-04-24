part of 'currency_cubit.dart';

enum CurrencyStatus { initial, loading, success, failure }

extension CurrencyStatusX on CurrencyStatus {
  bool get isInitial => this == CurrencyStatus.initial;

  bool get isLoading => this == CurrencyStatus.loading;

  bool get isSuccess => this == CurrencyStatus.success;

  bool get isFailure => this == CurrencyStatus.failure;
}

class CurrencyState {
  final CurrencyStatus status;
  final List<Currency>? currencyInfo;

  CurrencyState({
    this.status = CurrencyStatus.initial,
    this.currencyInfo = const [],
  });
}
