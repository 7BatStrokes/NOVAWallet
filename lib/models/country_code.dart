class CountryCode {
  final String id;
  final String name;
  final String code;

  CountryCode({
    required this.id,
    required this.name,
    required this.code,
  });

  factory CountryCode.fromJson(Map<String, dynamic> json) {
    return CountryCode(
      id: json['id'],
      name: json['name'],
      code: json['code'],
    );
  }

  @override
  String toString() => '$name (+$code)';
}
