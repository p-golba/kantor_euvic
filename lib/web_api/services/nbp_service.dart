import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kantor_euvic/web_api/models/currency.dart';

class CurrencyRequestFailure implements Exception {}

class CurrencyNotFoundFailure implements Exception {}

class NbpService {
  NbpService({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  static const _baseUrlCurrency = 'api.nbp.pl/api/exchangerates/';

  Future<List<Currency>> getCurrency({required String currencyCode}) async {
    final currencyRespone = await _httpClient.get(
        Uri.parse(
            'https://api.nbp.pl/api/exchangerates/rates/a/$currencyCode/last/30?format=json')
    );

    if (currencyRespone.statusCode != 200) {
      throw CurrencyRequestFailure();
    }

    final currencyList = json.decode(currencyRespone.body)['rates'];


  }
}
