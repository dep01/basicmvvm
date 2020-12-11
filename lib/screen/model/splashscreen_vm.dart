import 'package:basicmvvm/app/locator.dart';
import 'package:basicmvvm/app/routes.gr.dart';
import 'package:basicmvvm/widgets/loading_components.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashScreenViewModel extends BaseViewModel {
  NavigationService _nav = locator<NavigationService>();
  final loadings = new LoadingComponents();
  Future initialize() async {
    await runBusyFuture(Future.delayed(const Duration(seconds: 3)));
    // check auth in here bro, but now i just go to login
    // if (userIslogin) {
    //   _nav.replaceWith(Routes.home);
    // } else {
    //   _nav.replaceWith(Routes.login);
    // }
    _nav.replaceWith(Routes.login);
  }
}
