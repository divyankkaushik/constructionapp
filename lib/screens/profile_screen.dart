import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:constructionapp/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

import 'package:constructionapp/widgets/appbar.dart';

class ProfileScreen extends StatefulWidget {
  static const routename = "/profile";
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextStyle textstyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: AppUiColors.selectedIconColor,
  );
  bool onindivdualtapped = false;
  bool onfirmtapped = false;
  bool oncompanytapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        title: "Profile",
        option: true,
        iconThemeData: IconThemeData(
          color: AppUiColors.selectedIconColor,
        ),
      ),
      backgroundColor: AppUiColors.backgroundColor,
      body: ListView(
        children: [
          Center(
            child: Text(
              "Choose Category",
              style: textstyle,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomWidget(
                      radius: 200.0,
                      height: 70.0,
                      width: 70.0,
                      onTap: () {
                        setState(() {
                          oncompanytapped = false;
                          onfirmtapped = false;
                          onindivdualtapped = true;
                        });
                      },
                      gradient: onindivdualtapped
                          ? RadialGradient(
                              colors: [
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                              ],
                            )
                          : RadialGradient(
                              colors: [
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                              ],
                            ),
                      child: Icon(
                        Icons.person_outline,
                        color: AppUiColors.iconColor,
                        size: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Indivdual",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: onindivdualtapped ? AppUiColors.selectedIconColor : AppUiColors.iconColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomWidget(
                      radius: 200.0,
                      height: 70.0,
                      width: 70.0,
                      onTap: () {
                        setState(() {
                          oncompanytapped = false;
                          onfirmtapped = true;
                          onindivdualtapped = false;
                        });
                      },
                      gradient: onfirmtapped
                          ? RadialGradient(
                              colors: [
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                              ],
                            )
                          : RadialGradient(
                              colors: [
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                              ],
                            ),
                      child: Icon(
                        Icons.group_outlined,
                        color: AppUiColors.iconColor,
                        size: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Firm",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: onfirmtapped ? AppUiColors.selectedIconColor : AppUiColors.iconColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomWidget(
                      radius: 200.0,
                      height: 70.0,
                      width: 70.0,
                      onTap: () {
                        setState(() {
                          oncompanytapped = true;
                          onfirmtapped = false;
                          onindivdualtapped = false;
                        });
                      },
                      gradient: oncompanytapped
                          ? RadialGradient(
                              colors: [
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                                AppUiColors.selectedIconColor,
                              ],
                            )
                          : RadialGradient(
                              colors: [
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                              ],
                            ),
                      child: Icon(
                        Icons.group_outlined,
                        color: AppUiColors.iconColor,
                        size: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Company",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: oncompanytapped ? AppUiColors.selectedIconColor : AppUiColors.iconColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Center(
            child: Text(
              "Fill Your Details",
              style: textstyle,
            ),
          ),
        ],
      ),
    );
  }
}
