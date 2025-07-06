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

      final decoded = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return LoginResponse.fromJson(decoded);
      } else {
        String rawError = decoded['error'] ?? 'Login failed';
        String userFriendlyMessage;

        if (rawError.contains('invalid password')) {
          userFriendlyMessage = 'Incorrect password. Please try again.';
        } else if (rawError.contains('failed to find user')) {
          userFriendlyMessage = 'No account found with this email.';
        } else {
          userFriendlyMessage = 'Login failed. Please try again.';
        }

        return LoginResponse(
          token: '',
          message: userFriendlyMessage,
          success: false,
        );
      }
    } catch (e) {
      print('❌ Exception during login: $e');
      return LoginResponse(
        token: '',
        message: 'Ocurrió un error de red o del servidor. Intenta nuevamente.',
        success: false,
      );
    }
  }
}
