import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:flutter/material.dart';

AppBar appBarWidget({String title, bool option,List<Widget> widgets,IconThemeData iconThemeData,}) {
  return AppBar(
    iconTheme: iconThemeData,
    title: Text(
      title,
      style: TextStyle(color: AppUiColors.textColor, fontSize: 25.0),
    ),
    backgroundColor: AppUiColors.appBarBackgroundColor,
    automaticallyImplyLeading: option,
    actions: widgets,
  );
}
