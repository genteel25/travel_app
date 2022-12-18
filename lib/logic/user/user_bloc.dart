import 'package:travel_app/util/util.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final Repository _repository = Repository();
  UserBloc() : super(UserInitial()) {
    on<GetAllUsers>((event, emit) => getAllUsers(event, emit));
  }

  getAllUsers(event, emit) async {
    try {
      emit(UserLoading());
      final response = await _repository.getAllUsers();
      emit(UserSuccess(users: response));
    } catch (e) {
      emit(UserFailure(error: e.toString()));
    }
  }
}
