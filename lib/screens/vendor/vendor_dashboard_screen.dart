import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:constructionapp/screens/create_product_screen.dart';
import 'package:constructionapp/widgets/appbar.dart';
import 'package:constructionapp/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class VendorDashboardScreen extends StatefulWidget {
  static const routename = "/vendor-dashboard";
  @override
  _VendorDashboardScreenState createState() => _VendorDashboardScreenState();
}

class _VendorDashboardScreenState extends State<VendorDashboardScreen> {
  EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 15.0);
  TextStyle textStyle =
      TextStyle(fontSize: 18.0, color: AppUiColors.selectedIconColor);

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
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15.0),
            //   child: Text(
            //     "Services",
            //     style: TextStyle(
            //       fontSize: 17.0,
            //       color: AppUiColors.iconColor,
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Agents",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Architect",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Borewell Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Carpenter Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Civil Engineer",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Commercial Drivers",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Contractor",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Construction Machines",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "electrical Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Interior Designer",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Lab Tests",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Painting Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Pest Control Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Plumbing Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Rennovation Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Solar Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Transportation Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Waterproof Services",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
              child: Text(
                "Items and Products",
                style: TextStyle(
                  fontSize: 17.0,
                  color: AppUiColors.iconColor,
                ),
              ),
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Boards & Woods",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Construction Chemicals",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Construction Materials",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 80.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Electricals & Electronics",
            //       style: textStyle,
            //     )),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            Padding(
              padding: padding,
              child: CustomWidget(
                radius: 200.0,
                height: 70.0,
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(CreateProductScreen.routename);
                },
                child: Center(
                    child: Text(
                  "Furniture",
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
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Glass",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Kitchen Fittings",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 30.0,
            // ),
            // Padding(
            //   padding: padding,
            //   child: CustomWidget(
            //     radius: 200.0,
            //     height: 70.0,
            //     onTap: () {
            //       Navigator.of(context).pushNamed(CreateProductScreen.routename);
            //     },
            //     child: Center(
            //         child: Text(
            //       "Plastic",
            //       style: textStyle,
            //     )),
            //     gradient: RadialGradient(
            //       colors: [
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //         AppUiColors.backgroundColor,
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
