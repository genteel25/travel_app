import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travel_app/model/auth_model.dart';
import 'package:travel_app/model/user_response.dart';

class ApiServices {
  Future<List<UserResponse>> getAllUsers() async {
    try {
      List<UserResponse> messages = [];
      var response =
          await doGetRequest("http://localhost:3000/api/v1/user/allusers");
      if (isConnectionSuccessful(response.statusCode)) {
        var decodedJsons = jsonDecode(response.body) as List;
        messages = decodedJsons.map((e) => UserResponse.fromJson(e)).toList();
        return messages;
      }
      return messages;
    } catch (e) {
      List<UserResponse> users = [];
      return users;
    }
  }

  Future<AuthResponse> signIn({
    required String email,
    required String password,
  }) async {
    try {
      Map<String, String> payload = {
        "email": email,
        "password": password,
      };
      print(email);
      print(password);
      var response = await doPostRequest(
          "http://localhost:1000/api/v1/user/signin", payload);
      print(response.body);
      if (isConnectionSuccessful(response.statusCode)) {
        var decodedBody = jsonDecode(response.body);
        var requestResponse = AuthResponse.fromJson(decodedBody);
        requestResponse.status = true;
        return requestResponse;
      } else if (response.statusCode == 401) {
        var decodedBody = jsonDecode(response.body);
        var requestResponse = AuthResponse.fromJson(decodedBody);
        requestResponse.status = false;
        return requestResponse;
      } else {
        var decodedBody = jsonDecode(response.body);
        var requestResponse = AuthResponse.fromJson(decodedBody);
        requestResponse.status = false;
        return requestResponse;
      }
      // return AuthResponse();
    } on Exception {
      return AuthResponse(
        status: false,
        message: "You are not connected to the internet",
      );
    }
  }

  bool isConnectionSuccessful(int statusCode) {
    return statusCode == 200 || statusCode == 201;
  }
}

Future<http.Response> doPostRequest(
    String endpoint, Map<String, String> payload) async {
  // var header = await _getNormalHeader();
  var client = http.Client();
  return client.post(
    Uri.parse(endpoint),
    // headers: header,
    body: jsonEncode(payload),
  );
}

Future<http.Response> doGetRequest(String endpoint) async {
  // var header = await _getNormalHeader();
  return http.get(
    Uri.parse(endpoint),
    // headers: header,
  );
}

// Future<Map<String, String>> _getNormalHeader() async {
//   var header = <String, String>{};
//   header[AppString.KEY_CONTENT_TYPE] = AppString.CONTENT_TYPE;
//   String? token = await SessionManger().getToken();
//   if (token != null) {
//     header[AppString.authorization] = "Bearer $token";
//   }
//   return header;
// }
