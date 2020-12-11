import 'dart:convert';

List<UserModel> userModelFromMap(String str) =>
    List<UserModel>.from(json.decode(str).map((x) => UserModel.fromMap(x)));

String userModelToMap(List<UserModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class UserModel {
  UserModel({
    this.username,
    this.firstName,
    this.lastName,
    this.email,
  });

  final String username;
  final String firstName;
  final String lastName;
  final String email;

  UserModel copyWith({
    String username,
    String firstName,
    String lastName,
    String email,
  }) =>
      UserModel(
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
      );

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
      );

  Map<String, dynamic> toMap() => {
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
      };
}
