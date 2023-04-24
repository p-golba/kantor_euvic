import 'dart:convert';

import 'package:kantor_euvic/web_api/models/currency.dart';
import 'package:kantor_euvic/web_api/services/nbp_service.dart';

class CurrencyRepository {
  Future<List<Currency>> getCurrencyInfo(String currencyCode) async {
    final currencyResponse = await NbpService().getCurrency(
      currencyCode: currencyCode,
    );

    if (currencyResponse.statusCode != 200) {
      throw CurrencyRequestFailure();
    }

    final currencyJson = json.decode(currencyResponse.body)['rates'] as List;

    return currencyJson.map((e) => Currency.fromJson(e)).toList();
  }
}

class CurrencyRequestFailure implements Exception {}
