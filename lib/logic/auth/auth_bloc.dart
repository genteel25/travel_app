import 'package:travel_app/util/util.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignIn>((event, emit) => signIn());
    on<SignUp>((event, emit) => signUp());
  }

  signIn() async {}
  signUp() async {}
}
