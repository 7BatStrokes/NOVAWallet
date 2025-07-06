class LoginResponse {
  final String token;
  final String message;
  final bool success;

  LoginResponse({
    required this.token,
    required this.message,
    required this.success,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['data'] ?? '',
      message: json['message'] ?? json['error'] ?? 'Unknown error',
      success: json['success'] ?? false,
    );
  }
}
