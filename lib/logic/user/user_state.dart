import 'package:travel_app/model/user_response.dart';
import 'package:travel_app/util/util.dart';

abstract class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {
  @override
  List<Object> get props => [];
}

class UserSuccess extends UserState {
  final List<UserResponse> users;
  UserSuccess({required this.users});
  @override
  List<Object> get props => [users];
}

class UserFailure extends UserState {
  final String error;
  UserFailure({required this.error});
}
