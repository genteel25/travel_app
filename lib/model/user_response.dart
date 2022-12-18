class UserResponse {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String image;
  UserResponse({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.image,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      image: json['image'],
    );
  }
}
