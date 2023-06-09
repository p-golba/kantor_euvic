import 'package:bloc/bloc.dart';
import 'package:kantor_euvic/web_api/models/currency.dart';
import 'package:kantor_euvic/web_api/repositories/currency_repository.dart';

part 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  final CurrencyRepository _currencyRepository;

  CurrencyCubit(this._currencyRepository) : super(CurrencyState());

  Future<void> fetchCurrency(String countryCode) async {
    try {
      final currencyInfo = await _currencyRepository.getCurrencyInfo(
        countryCode,
      );
      emit(
        state.copyWith(
          status: CurrencyStatus.success,
          currencyInfo: currencyInfo.reversed.toList(),
        ),
      );
    } on Exception {
      emit(
        state.copyWith(
          status: CurrencyStatus.failure,
        ),
      );
    }
  }
}
