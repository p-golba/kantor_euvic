import 'package:http/http.dart' as http;

class NbpService {
  NbpService({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  Future<http.Response> getCurrency({required String currencyCode}) async {
    return _httpClient.get(
      Uri.parse(
        'https://api.nbp.pl/api/exchangerates/rates/a/$currencyCode/last/30?format=json',
      ),
    );
  }
}
