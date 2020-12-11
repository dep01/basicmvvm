import 'package:flutter/material.dart';

class AlertComponents {
  void alertIcon(context, String alert, IconData icons) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Builder(builder: (context) {
            return AlertDialog(
              title: Text(
                alert,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              content: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                    child: Icon(
                  icons,
                  size: 100.0,
                  color: Colors.orange,
                )),
              ),
            );
          });
        });
  }

  void alertIconAction(
      context,
      String title,
      String alert,
      IconData icons,
      Function onOK,
      Function okCancel,
      String onOkTitle,
      String onCancelTitle) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Builder(builder: (context) {
            return AlertDialog(
              title: Text(
                alert,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              content: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                    child: Icon(
                  icons,
                  size: 100.0,
                  color: Colors.orange,
                )),
              ),
            );
          });
        });
  }

  void alertAction(context,
      {String alert = "",
      String title = "",
      Function onOk,
      Function onCancel,
      String onOkText = "YES",
      String onCancelText = "NO"}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Builder(builder: (context) {
            return AlertDialog(
              title: Text(
                title,
                softWrap: true,
                textAlign: TextAlign.start,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              content: Text(
                alert,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.normal),
              ),
              actions: [
                RaisedButton(
                  onPressed: () async {
                    await onOk();
                  },
                  disabledTextColor: Colors.black45,
                  color: Colors.white,
                  child: Expanded(
                    child: Text(
                      onOkText.toUpperCase(),
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  elevation: 0,
                  highlightElevation: 0,
                ),
                RaisedButton(
                  onPressed: () async {
                    await onCancel();
                  },
                  color: Colors.white,
                  disabledTextColor: Colors.black45,
                  child: Expanded(
                    child: Text(
                      onCancelText.toUpperCase(),
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  elevation: 0,
                  highlightElevation: 0,
                ),
              ],
            );
          });
        });
  }

  void alertColumnAction(context,
      {String title = "",
      String alert = "",
      IconData icon = Icons.check,
      String image = "",
      List<Widget> action,
      Color textColorTitle = Colors.black,
      Color textColorAlert = Colors.black,
      Color iconColor = Colors.black}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Builder(builder: (context) {
            return AlertDialog(
                title: Text(
                  title,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColorTitle, fontWeight: FontWeight.bold),
                ),
                content: Container(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    alert != ""
                        ? Text(
                            alert,
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: textColorAlert,
                                fontWeight: FontWeight.normal),
                          )
                        : SizedBox(
                            height: 1.0,
                          ),
                    alert != ""
                        ? SizedBox(
                            height: 12.0,
                          )
                        : SizedBox(
                            height: 1.0,
                          ),
                    image != ""
                        ? Image.asset(
                            image,
                            fit: BoxFit.fitHeight,
                            color: iconColor,
                          )
                        : Icon(
                            icon,
                            size: 100.0,
                            color: iconColor,
                          ),
                    SizedBox(
                      height: 12.0,
                    ),
                    action != null
                        ? Column(
                            children: action,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          )
                        : SizedBox(height: 1.0)
                  ]),
                ));
          });
        });
  }
}
