import 'package:travel_app/util/util.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<GetAllUsers>((event, emit) => getAllUsers(event, emit));
  }

  getAllUsers(event, emit) async {
    try {
      emit(UserLoading());
      final response = await repository.getAllUsers();
      print(response);
      emit(UserSuccess(users: response));
    } catch (e) {
      emit(UserFailure(error: e.toString()));
    }
  }
}
