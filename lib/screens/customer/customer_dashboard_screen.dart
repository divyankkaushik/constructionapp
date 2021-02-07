import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:constructionapp/widgets/appbar.dart';
import 'package:constructionapp/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class CustomerDashboardScreen extends StatelessWidget {
  static const routename = "/customer-dashboard";
  final EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 15.0);
  final TextStyle textStyle = TextStyle(fontSize: 18.0, color: AppUiColors.selectedIconColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        title: "Dashboard",
        option: true,
        iconThemeData: IconThemeData(
          color: AppUiColors.selectedIconColor,
        ),
      ),
      backgroundColor: AppUiColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: padding,
              child: CustomWidget(
                radius: 200.0,
                height: 70.0,
                onTap: () {},
                child: Center(
                    child: Text(
                  "Items and Products",
                  style: textStyle,
                )),
                gradient: RadialGradient(
                  colors: [
                    AppUiColors.backgroundColor,
                    AppUiColors.backgroundColor,
                    AppUiColors.backgroundColor,
                    AppUiColors.backgroundColor,
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: padding,
              child: CustomWidget(
                radius: 200.0,
                height: 70.0,
                onTap: () {},
                child: Center(
                    child: Text(
                  "Services",
                  style: textStyle,
                )),
                gradient: RadialGradient(
                  colors: [
                    AppUiColors.backgroundColor,
                    AppUiColors.backgroundColor,
                    AppUiColors.backgroundColor,
                    AppUiColors.backgroundColor,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
