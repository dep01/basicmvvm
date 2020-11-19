import 'package:basicmvvm/app/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  NavigationService _nav = locator<NavigationService>();
  final key = new GlobalKey<ScaffoldState>();
  final formKey = new GlobalKey<FormState>();
}
