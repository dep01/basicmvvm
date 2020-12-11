import 'package:http/http.dart' show Client;
import 'dart:convert';

const String baseUrl = "http://192.168.43.55:8080/api-crud/index.php/";

class ApiClient {
  Client http = new Client();
  Future<dynamic> postData({String endPoint, Object body}) {
    return http.post(baseUrl + endPoint, body: jsonEncode(body), headers: {
      "Content-type": "application/json",
      "Accept": "application/json",
      "Authorization": "Bearer "
    });
  }

  Future<dynamic> getData({String endPoint}) {
    return http.get(baseUrl + endPoint, headers: {
      "Content-type": "application/json",
      "Accept": "application/json"
    });
  }
}

final client = new ApiClient();
