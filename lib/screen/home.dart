import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'model/home_vm.dart';

class Home extends ViewModelBuilderWidget<HomeViewModel> {
  @override
  viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  bool get reactive => true;

  @override
  bool get disposeViewModel => true;

  @override
  void onViewModelReady(HomeViewModel model) {
    super.onViewModelReady(model);
  }

  @override
  Widget builder(BuildContext context, model, Widget child) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        key: model.key,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.8],
              colors: [
                Colors.transparent,
                // Color(0xFF0D2783),
                Color.fromARGB(235, 0, 0, 0),
              ],
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.yellow,
          ),
        ));
  }
}
