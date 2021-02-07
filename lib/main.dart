import 'package:constructionapp/screens/customer/customer_dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:constructionapp/providers/auth.dart';
import 'package:constructionapp/screens/authenticate_screen.dart';
import 'package:constructionapp/screens/home_screen.dart';
import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:constructionapp/screens/create_product_screen.dart';
import 'package:constructionapp/screens/vendor/vendor_dashboard_screen.dart';
import 'package:constructionapp/screens/profile_screen.dart';
import 'package:constructionapp/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppUiColors.backgroundColor,
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
      ],
      child: Consumer<Auth>(
        builder: (context, authData, _) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: authData.isAuth
              ? HomeScreen()
              : FutureBuilder(
                  future: authData.autoLogin(),
                  builder: (context, authResultSnapshot) => authResultSnapshot.connectionState == ConnectionState.waiting ? SplashScreen() : AuthenticateScreen(),
                ),
          routes: {
            VendorDashboardScreen.routename: (context) => VendorDashboardScreen(),
            CustomerDashboardScreen.routename: (context) => CustomerDashboardScreen(),
            ProfileScreen.routename: (context) => ProfileScreen(),
            CreateProductScreen.routename: (context) => CreateProductScreen(),
          },
        ),
      ),
    );
  }
}
