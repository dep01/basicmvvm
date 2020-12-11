import 'package:basicmvvm/app/locator.dart';
import 'package:basicmvvm/models/userModel.dart';
import 'package:basicmvvm/providers/Item.dart';
import 'package:basicmvvm/utils/general_helper.dart';
import 'package:basicmvvm/widgets/alert_components.dart';
import 'package:basicmvvm/widgets/loading_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  NavigationService _nav = locator<NavigationService>();
  ScrollController scrollController;
  final alerts = new AlertComponents();
  final helper = new GeneralHelper();
  final loadings = new LoadingComponents();
  UserModel userModel;
  bool init = true;
  final key = new GlobalKey<ScaffoldState>();
  List items;
  Future initialize() async {
    final _itemProvider = new ItemProvider();
    final result = await _itemProvider.getAllItems();
    items = result;
    init = false;
    notifyListeners();
  }
}
