import 'package:travel_app/model/auth_model.dart';
import 'package:travel_app/util/util.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignIn>((event, emit) => signIn(event, emit));
    on<SignUp>((event, emit) => signUp());
  }

  signIn(event, emit) async {
    try {
      emit(AuthLoading());
      final AuthResponse auth =
          await repository.signIn(event.email, event.password);
      print(auth.token);
      print(auth.status);
      if (auth.status == true) {
        emit(AuthSuccess(response: auth));
      } else {
        emit(AuthFailure(error: auth.message.toString()));
      }
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  signUp() async {}
}
