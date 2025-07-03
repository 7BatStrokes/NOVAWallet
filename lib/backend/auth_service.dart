import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nova_wallet/models/login_response.dart';

class AuthService {
  static const String _baseUrl = 'https://nova.dmirandam.com/api';

  static Future<LoginResponse?> login(String email, String password) async {
    final url = Uri.parse('$_baseUrl/login');

    final body = {
      'email': email,
      'password': password,
    };

    try {
      final response = await http.post(
        url,
        body: jsonEncode(body),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      print('Login request sent to: $url');
      print('Body: $body');
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);
        return LoginResponse.fromJson(decoded);
      } else {
        return null;
      }
    } catch (e) {
      print('❌ Error during login: $e');
      return null;
    }
  }
}
