// import 'package:flutter_socket_io/flutter_socket_io.dart';

import 'package:travel_app/model/user_response.dart';
import 'package:travel_app/service/api_service.dart';

class Repository {
  final ApiServices _apiServices = ApiServices();

  Future<List<UserResponse>> getAllUsers() async {
    return await _apiServices.getAllUsers();
  }
}
