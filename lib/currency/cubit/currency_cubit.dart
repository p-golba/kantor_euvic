import 'package:bloc/bloc.dart';
import 'package:kantor_euvic/web_api/models/currency.dart';
import 'package:meta/meta.dart';

part 'currency_state.dart';

class CurrencyCubit extends Cubit<CurrencyState> {
  CurrencyCubit() : super(CurrencyInitial());
}
