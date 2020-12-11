import 'package:basicmvvm/models/userModel.dart';
import 'package:basicmvvm/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'model/login_vm.dart';

class Login extends ViewModelBuilderWidget<LoginViewModel> {
  @override
  viewModelBuilder(BuildContext context) => LoginViewModel();

  @override
  bool get reactive => true;

  @override
  bool get disposeViewModel => true;

  @override
  void onViewModelReady(LoginViewModel model) {
    model.initialize();
    super.onViewModelReady(model);
  }

  @override
  Widget builder(BuildContext context, model, Widget child) {
    model.checkLocation();
    return Scaffold(
        backgroundColor: Colors.transparent,
        key: model.key,
        body: model.init
            ? model.loadings.initLoading
            : Container(
                padding: EdgeInsets.fromLTRB(24.0, 12.0, 0, 12.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: AppBaseColors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello my friend,\nPick your account first :)",
                      style: TextStyle(
                          color: AppBaseColors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                      softWrap: true,
                      textAlign: TextAlign.start,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 24),
                        controller: model.scrollController,
                        itemCount: model.items.length,
                        itemBuilder: (lContext, index) {
                          return userTile(context, model, index);
                        },
                      ),
                    )
                  ],
                ),
              ));
  }

  Widget userTile(context, model, int i) {
    UserModel user = model.items[i];
    return GestureDetector(
      onTap: () => model.login(context, user),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        margin: EdgeInsets.only(bottom: 10.0, left: 50.0),
        padding: EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          color: AppBaseColors.disabled,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
              decoration: BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: AppBaseColors.orange, width: 1.0))),
              child: Text(
                user.firstName + ' ' + user.lastName,
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
                textAlign: TextAlign.start,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  AppIcons.icUser,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Text(
                        "${user.firstName} ${user.lastName} ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Text(
                        "${user.email}",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
