import 'package:basicmvvm/utils/constant.dart';
import 'package:basicmvvm/widgets/loading_components.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'model/splashscreen_vm.dart';
import 'package:responsive_screen/responsive_screen.dart';

class SplashScreen extends ViewModelBuilderWidget<SplashScreenViewModel> {
  @override
  SplashScreenViewModel viewModelBuilder(BuildContext context) =>
      SplashScreenViewModel();

  @override
  bool get reactive => true;

  @override
  bool get disposeViewModel => true;

  @override
  void onViewModelReady(SplashScreenViewModel model) {
    model.initialize();
    super.onViewModelReady(model);
  }

  @override
  Widget builder(
      BuildContext context, SplashScreenViewModel model, Widget child) {
    final Function wp = Screen(context).wp;
    return Scaffold(
      backgroundColor: AppBaseColors.yellow,
      body: SizedBox(
        width: wp(100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 50.0),
              child: Image(
                image: AssetImage(AppIcons.icFood),
                width: 80.0,
              ),
            ),
            model.loadings.loadingBlok(context, colors: Colors.orange)
          ],
        ),
      ),
    );
  }
}
