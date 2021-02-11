import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:constructionapp/providers/auth.dart';
import 'package:constructionapp/screens/vendor/vendor_dashboard_screen.dart';
import 'package:constructionapp/screens/profile_screen.dart';
import 'package:constructionapp/widgets/appbar.dart';
import 'package:constructionapp/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routename = "/home-screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextStyle dialogTextstyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
  EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 15.0);
  TextStyle textStyle =
      TextStyle(fontSize: 18.0, color: AppUiColors.selectedIconColor);
  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 210.0),
        child: AlertDialog(
          content: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Logout",
                    style: dialogTextstyle,
                  ),
                  CustomWidget(
                    radius: 100.0,
                    height: 50.0,
                    width: 50.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: AppUiColors.selectedIconColor,
                        size: 30.0,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/");
                        Navigator.of(context).pop();
                        Provider.of<Auth>(context, listen: false).logout();
                      },
                    ),
                    gradient: RadialGradient(
                      colors: [
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Share",
                    style: dialogTextstyle,
                  ),
                  CustomWidget(
                    radius: 100.0,
                    height: 50.0,
                    width: 50.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: AppUiColors.selectedIconColor,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                    gradient: RadialGradient(
                      colors: [
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Help",
                    style: dialogTextstyle,
                  ),
                  CustomWidget(
                    radius: 100.0,
                    height: 50.0,
                    width: 50.0,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: AppUiColors.selectedIconColor,
                        size: 30.0,
                      ),
                      onPressed: () {},
                    ),
                    gradient: RadialGradient(
                      colors: [
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: "Welcome !!", option: false, widgets: [
        IconButton(
          icon: Icon(
            Icons.person,
            color: AppUiColors.selectedIconColor,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(ProfileScreen.routename);
          },
        ),
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: AppUiColors.selectedIconColor,
          ),
          onPressed: () {
            _showErrorDialog();
          },
        ),
      ]),
      backgroundColor: AppUiColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 40.0,
        ),
        child: ListView(
          children: [
            Padding(
              padding: padding,
              child: CustomWidget(
                radius: 200.0,
                height: 70.0,
                onTap: () {},
                child: Center(
                    child: Text(
                  "PRIVATE TENDERS",
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
              height: 40.0,
            ),
            Padding(
              padding: padding,
              child: CustomWidget(
                radius: 200.0,
                height: 70.0,
                onTap: () {},
                child: Center(
                    child: Text(
                  "ESTIMATES",
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
              height: 40.0,
            ),
            Container(
              height: 130.0,
              child: Image.network(
                  "https://res.cloudinary.com/simplotel/image/upload/x_0,y_615,w_4813,h_1875,c_crop,q_80,fl_progressive/w_600,h_337,f_auto,c_fit/vits-hotels/Listing_Image_skazsy"),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: padding,
              child: CustomWidget(
                radius: 200.0,
                height: 70.0,
                onTap: () {},
                child: Center(
                    child: Text(
                  "UNITS CONVERTER",
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
              height: 40.0,
            ),
            Container(
              height: 130.0,
              child: Image.network(
                  "https://res.cloudinary.com/simplotel/image/upload/x_0,y_615,w_4813,h_1875,c_crop,q_80,fl_progressive/w_600,h_337,f_auto,c_fit/vits-hotels/Listing_Image_skazsy"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppUiColors.appBarBackgroundColor,
        onPressed: () {
          Navigator.of(context).pushNamed(VendorDashboardScreen.routename);
        },
        label: Text(
          "Dashboard",
          style: TextStyle(color: AppUiColors.selectedIconColor),
        ),
        icon: Icon(
          Icons.menu,
          color: AppUiColors.selectedIconColor,
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  bool onServiceButtonPressed = false;
  bool onDashBoardButtonPressed = false;
  bool onProfileButtonPressed = false;

  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            color: AppUiColors.appBarBackgroundColor,
            width: size.width,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                width: size.width,
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CustomWidget(
                          radius: 200.0,
                          height: 60.0,
                          width: 60.0,
                          child: IconButton(
                            onPressed: () {
                              setBottomBarIndex(0);
                            },
                            icon: Icon(
                              Icons.home,
                              color: currentIndex == 0
                                  ? AppUiColors.selectedIconColor
                                  : AppUiColors.iconColor,
                              size: 30.0,
                            ),
                          ),
                        ),
                        Text(
                          "Services",
                          style: TextStyle(
                            color: currentIndex == 0
                                ? AppUiColors.selectedIconColor
                                : AppUiColors.iconColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomWidget(
                          radius: 200.0,
                          height: 60.0,
                          width: 60.0,
                          child: IconButton(
                            onPressed: () {
                              setBottomBarIndex(1);
                            },
                            icon: Icon(
                              Icons.menu,
                              color: currentIndex == 1
                                  ? AppUiColors.selectedIconColor
                                  : AppUiColors.iconColor,
                              size: 30.0,
                            ),
                          ),
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            color: currentIndex == 1
                                ? AppUiColors.selectedIconColor
                                : AppUiColors.iconColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomWidget(
                          radius: 200.0,
                          height: 60.0,
                          width: 60.0,
                          child: IconButton(
                            onPressed: () {
                              setBottomBarIndex(2);
                            },
                            icon: Icon(
                              Icons.person,
                              color: currentIndex == 2
                                  ? AppUiColors.selectedIconColor
                                  : AppUiColors.iconColor,
                              size: 30.0,
                            ),
                          ),
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                            color: currentIndex == 2
                                ? AppUiColors.selectedIconColor
                                : AppUiColors.iconColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
