
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../routing/navigation_services.dart';


void showToast({
  required String text,
  ToastStates state=ToastStates.error,
}) =>
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseColor(state, NavigationService.navigationKey.currentContext!),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStates { success, error, warning }

Color chooseColor(ToastStates state, context) {
  Color color;
  switch (state) {
    case ToastStates.success:
      color = Theme.of(context).primaryColor;
      break;
    case ToastStates.error:
      color = Colors.red;
      break;
    case ToastStates.warning:
      color = Colors.amber;
      break;
  }
  return color;
}

