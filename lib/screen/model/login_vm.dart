import 'package:basicmvvm/app/locator.dart';
import 'package:basicmvvm/app/routes.gr.dart';
import 'package:basicmvvm/models/ProfileModel.dart';
import 'package:basicmvvm/models/userModel.dart';
import 'package:basicmvvm/providers/User.dart';
import 'package:basicmvvm/providers/profile.dart';
import 'package:basicmvvm/widgets/alert_components.dart';
import 'package:basicmvvm/widgets/loading_components.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart';

class LoginViewModel extends BaseViewModel {
  NavigationService _nav = locator<NavigationService>();
  ScrollController scrollController;
  final alerts = new AlertComponents();
  final loadings = new LoadingComponents();
  final key = new GlobalKey<ScaffoldState>();
  bool init = true;
  List<UserModel> items;
  List<ProfileModel> profile;
  void checkLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    print("kemari");
    _locationData = await location.getLocation();
    print("lagi");

    print(_locationData.latitude.toString());

    // bool serviceEnabled;
    // LocationPermission permission;
    // Position _locationData;
    // serviceEnabled = await Geolocator.isLocationServiceEnabled();
    // if (!serviceEnabled) {
    //   return Future.error('Location services are disabled.');
    // }

    // permission = await Geolocator.checkPermission();
    // if (permission == LocationPermission.deniedForever) {
    //   return Future.error(
    //       'Location permissions are permantly denied, we cannot request permissions.');
    // }

    // if (permission == LocationPermission.denied) {
    //   permission = await Geolocator.requestPermission();
    //   if (permission != LocationPermission.whileInUse &&
    //       permission != LocationPermission.always) {
    //     return Future.error(
    //         'Location permissions are denied (actual value: $permission).');
    //   }
    // }
    // print("kemari dulu");
    // _locationData = await Geolocator.getCurrentPosition();
    // notifyListeners();

    // print(_locationData.latitude.toString());
  }

  Future initialize() async {
    final _userProvider = new UserProvider();
    final result = await _userProvider.getAllUser();
    // final _profileProfider = new ProfileProvider();
    // final resultP = await _profileProfider.getList();
    // profile = resultP;
    // print(profile[0].alamat);
    items = result;
    init = false;
    // you must call notifyListeners everytime data changes
    notifyListeners();
  }

  void login(context, UserModel user) {
    Navigator.pop(context);
    _nav.replaceWith(Routes.home, arguments: HomeArguments(user: user));
  }
}
