part of 'currency_cubit.dart';

enum CurrencyStatus { initial, success, failure }

class CurrencyState {
  final CurrencyStatus status;
  final List<Currency> currencyInfo;

  CurrencyState({
    this.status = CurrencyStatus.initial,
    List<Currency>? currencyInfo,
  }) : currencyInfo = currencyInfo ?? const [];

  CurrencyState copyWith({
    CurrencyStatus? status,
    List<Currency>? currencyInfo,
  }) {
    return CurrencyState(
      status: status ?? this.status,
      currencyInfo: currencyInfo ?? this.currencyInfo,
    );
  }
}
