import 'dart:convert';

import 'package:basicmvvm/backendDummies/user.dart';
import 'package:basicmvvm/models/userModel.dart';

class UserProvider {
  Future<List<UserModel>> getAllUser() async {
    var response = UserDummies.user.toString();
    return userModelFromMap(jsonDecode(response));
  }
}
