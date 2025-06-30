import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nova_wallet/models/country_code.dart';

class ApiService {
  static const String _baseUrl = 'https://nova.dmirandam.com';

  Future<List<CountryCode>> getCountryCodes() async {
    try {
      final response = await http.get(
        Uri.parse('$_baseUrl/api/country-codes'),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> codesJson = data['country_codes'];
        return codesJson.map((json) => CountryCode.fromJson(json)).toList();
      } else {
        print('Error: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error fetching country codes: $e');
      return [];
    }
  }

}
