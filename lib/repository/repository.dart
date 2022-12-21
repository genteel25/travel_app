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

  Future<AuthResponse> signUp(
      String email, String password, String phone, String name) async {
    return await _apiServices.signUp(
        email: email, password: password, phone: phone, name: name);
  }

  Future<AuthResponse> verifyUser(String code) async {
    return await _apiServices.verifyUser(code: code);
  }

  Future<AuthResponse> resendOtp() async {
    return await _apiServices.resendOtps();
  }
}
