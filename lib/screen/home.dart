import 'package:basicmvvm/models/itemModel.dart';
import 'package:basicmvvm/models/userModel.dart';
import 'package:basicmvvm/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'model/home_vm.dart';

class Home extends ViewModelBuilderWidget<HomeViewModel> {
  final UserModel user;
  Home({this.user});
  @override
  viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  bool get reactive => true;

  @override
  bool get disposeViewModel => true;

  @override
  void onViewModelReady(HomeViewModel model) {
    model.userModel = user;
    model.initialize();
    super.onViewModelReady(model);
  }

  @override
  Widget builder(BuildContext context, model, Widget child) {
    return Scaffold(
        backgroundColor: AppBaseColors.yellow,
        key: model.key,
        appBar: AppBar(
          title: Text(
            "Hello ${model.userModel.username}\nWelcome back ",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: AppBaseColors.yellow,
          toolbarHeight: 64,
          elevation: 0,
          actions: [Text("logout")],
        ),
        body: model.init
            ? model.loadings.initLoading
            : Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                color: AppBaseColors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "What are you needed?",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        padding: EdgeInsets.only(top: 24),
                        controller: model.scrollController,
                        itemCount: model.items.length,
                        itemBuilder: (lContext, index) {
                          return itemTile(context, model, index);
                        },
                      ),
                    )
                  ],
                ),
              ));
  }

  Widget itemTile(context, model, int i) {
    ItemModel item = model.items[i];
    return GestureDetector(
      onTap: () => print(item.productName),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.15,
        margin: EdgeInsets.only(bottom: 10.0),
        padding: EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0)),
          color: Colors.transparent,
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
                item.productName,
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
                        model.helper.rupiah(item.productPrice.toString()),
                        textAlign: TextAlign.start,
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
