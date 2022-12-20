// import 'package:flutter_socket_io/flutter_socket_io.dart';

import 'package:travel_app/model/auth_model.dart';
import 'package:travel_app/model/user_response.dart';
import 'package:travel_app/service/api_service.dart';

class Repository {
  final ApiServices _apiServices = ApiServices();

  Future<List<UserResponse>> getAllUsers() async {
    return await _apiServices.getAllUsers();
  }

  Future<AuthResponse> signIn(String email, String password) async {
    return await _apiServices.signIn(email: email, password: password);
  }
}
