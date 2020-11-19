import 'package:auto_route/auto_route_annotations.dart';
import 'package:basicmvvm/screen/home.dart';
import 'package:basicmvvm/screen/login.dart';
import 'package:basicmvvm/screen/splashscreen.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  Login login;
  SplashScreen splashScreen;
  Home home;
}
