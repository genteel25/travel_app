abstract class AuthEvent {}

class SignUp extends AuthEvent {
  final String name;
  final String email;
  final String password;
  final String phone;

  SignUp({
    required this.email,
    required this.name,
    required this.password,
    required this.phone,
  });
}

class SignIn extends AuthEvent {
  final String email;
  final String password;

  SignIn({
    required this.email,
    required this.password,
  });
}
