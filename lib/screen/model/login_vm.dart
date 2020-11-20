import 'package:basicmvvm/app/locator.dart';
import 'package:basicmvvm/app/routes.gr.dart';
import 'package:basicmvvm/models/userModel.dart';
import 'package:basicmvvm/providers/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  NavigationService _nav = locator<NavigationService>();
  final key = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
  bool init = true;
  List items;
  Future initialize() async {
    final _userProvider = new UserProvider();
    final result = await _userProvider.getAllUser();
    items = result;
    init = false;
    notifyListeners();
  }

  void login(UserModel user) async {
    _nav.replaceWith(Routes.home, arguments: HomeArguments(user: user));
  }
}
