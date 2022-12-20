class AuthResponse {
  dynamic message;
  String? token;
  bool? status;

  AuthResponse({this.status, this.message, this.token});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      message: json['message'] as dynamic,
      token: json['token'],
      status: json['status'],
    );
  }
}
