import 'package:constructionapp/models/http_exception.dart';
import 'package:constructionapp/screens/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:constructionapp/widgets/appbar.dart';
import 'package:constructionapp/widgets/custom_widget.dart';
import 'package:constructionapp/providers/auth.dart';
import 'package:constructionapp/widgets/textfield.dart';

enum AuthMode { Signup, Login }

class AuthenticateScreen extends StatefulWidget {
  @override
  _AuthenticateScreenState createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  AuthMode _authMode = AuthMode.Signup;
  bool onCustomerButtonPressed = false;
  bool onVendorButtonPressed = false;
  bool rememberMe = false;
  var _isLoading = false;
  EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20.0);
  TextEditingController nameController = TextEditingController();
  TextStyle defaultStyle =
      TextStyle(color: AppUiColors.iconColor, fontSize: 15.0);
  TextStyle linkStyle = TextStyle(color: AppUiColors.selectedIconColor);
  Map<String, String> _authData = {
    'email': '',
    'password': '',
  };

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // Here goes your functionality that remembers the user.
        } else {
          //  Forget the user
        }
      });

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("An Error Occured"),
        content: Text(message),
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Okay"))
        ],
      ),
    );
  }

  void _switchAuthMode() {
    if (_authMode == AuthMode.Login) {
      setState(() {
        _authMode = AuthMode.Signup;
      });
    } else {
      setState(() {
        _authMode = AuthMode.Login;
      });
    }
  }

  Future<void> _submit() async {
    if (!_formKey.currentState.validate()) {
      // Invalid!
      return;
    }
    _formKey.currentState.save();
    try {
      if (_authMode == AuthMode.Login) {
        await Provider.of<Auth>(context, listen: false).signIn(
          _authData["email"],
          _authData["password"],
        );
      } else {
        await Provider.of<Auth>(context, listen: false).signUp(
          _authData["email"],
          _authData["password"],
        );
      }
    } on HttpException catch (error) {
      var errorMessage = "Authentication failed";
      if (error.toString().contains("EMAIL_EXISTS")) {
        errorMessage = "Email already exist.";
      } else if (error.toString().contains("INVALID_EMAIL")) {
        errorMessage = "Invalid email address.";
      } else if (error.toString().contains("WEAK_PASSWORD")) {
        errorMessage = "Password is weak.";
      } else if (error.toString().contains("EMAIL_NOT_FOUND")) {
        errorMessage = "Email not found.";
      } else if (error.toString().contains("INVALID_PASSWORD")) {
        errorMessage = "Invalid password.";
      }
      _showErrorDialog(errorMessage);
    } catch (error) {
      const errorMessage =
          "Could not able to authenticate. Please try again later";
      _showErrorDialog(errorMessage);
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        title: _authMode == AuthMode.Signup ? "SignUp" : "SignIn",
        option: false,
      ),
      backgroundColor: AppUiColors.backgroundColor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (_authMode == AuthMode.Signup)
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
                            height: 110.0,
                            width: 110.0,
                            gradient: RadialGradient(
                              colors: [
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  onCustomerButtonPressed = true;
                                  onVendorButtonPressed = false;
                                });
                              },
                              icon: Icon(
                                Icons.person_outline,
                                color: onCustomerButtonPressed
                                    ? AppUiColors.selectedIconColor
                                    : AppUiColors.iconColor,
                                size: 70.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "CUSTOMER",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: onCustomerButtonPressed
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
                            height: 110.0,
                            width: 110.0,
                            gradient: RadialGradient(
                              colors: [
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                                AppUiColors.backgroundColor,
                              ],
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  onVendorButtonPressed = true;
                                  onCustomerButtonPressed = false;
                                });
                              },
                              icon: Icon(
                                Icons.person_outline,
                                color: onVendorButtonPressed
                                    ? AppUiColors.selectedIconColor
                                    : AppUiColors.iconColor,
                                size: 70.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "VENDOR",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: onVendorButtonPressed
                                  ? AppUiColors.selectedIconColor
                                  : AppUiColors.iconColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              if (_authMode == AuthMode.Signup)
                Padding(
                  padding: padding,
                  child: InputTextField(
                    controller: nameController,
                    hintText: "Name",
                  ),
                ),
              SizedBox(
                height: 20.0,
              ),
              if (_authMode == AuthMode.Signup)
                Padding(
                  padding: padding,
                  child: InputTextField(hintText: "Enter your mobile number"),
                ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: padding,
                child: InputTextField(
                  hintText: "Enter your email Id",
                  keyBoardType: TextInputType.emailAddress,
                  validatorFunction: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'Invalid email!';
                    }
                    return null;
                  },
                  onSavedFunction: (value) {
                    _authData['email'] = value;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: padding,
                child: InputTextField(
                  keyBoardType: TextInputType.visiblePassword,
                  obscureText: true,
                  hintText: "Enter Password",
                  validatorFunction: (value) {
                    if (value.isEmpty || value.length < 8) {
                      return 'Password is too short!';
                    }
                    return null;
                  },
                  onSavedFunction: (value) {
                    _authData['password'] = value;
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              if (_authMode == AuthMode.Signup)
                Padding(
                  padding: padding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppUiColors.selectedIconColor, width: 2),
                        ),
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          activeColor: AppUiColors.selectedIconColor,
                          value: rememberMe,
                          onChanged: _onRememberMeChanged,
                        ),
                      ),
                      Container(
                        width: 270,
                        child: RichText(
                          text: TextSpan(
                            style: defaultStyle,
                            children: <TextSpan>[
                              TextSpan(text: 'By signing up you accept the '),
                              TextSpan(
                                  text: 'Terms of Service',
                                  style: linkStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Terms of Service"');
                                    }),
                              TextSpan(text: ' and '),
                              TextSpan(
                                  text: 'Privacy Policy.',
                                  style: linkStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      print('Privacy Policy"');
                                    }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                child: Text(
                    '${_authMode == AuthMode.Login ? 'SIGNUP' : 'LOGIN'} INSTEAD'),
                onPressed: _switchAuthMode,
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 4),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                textColor: AppUiColors.selectedIconColor,
              ),
              SizedBox(
                height: 10.0,
              ),
              if (_isLoading)
                CircularProgressIndicator()
              else
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  color: AppUiColors.appBarBackgroundColor,
                  onPressed: _submit,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _authMode == AuthMode.Login ? 'SignIn' : 'Sign Up',
                      style: TextStyle(
                          color: AppUiColors.selectedIconColor, fontSize: 25.0),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomWidget(
        onTap: () {
          Navigator.of(context).pushNamed(HomeScreen.routename);
        },
        radius: 200.0,
        height: 60.0,
        width: 60.0,
        gradient: RadialGradient(
          colors: [
            AppUiColors.backgroundColor,
            AppUiColors.backgroundColor,
            AppUiColors.backgroundColor,
            AppUiColors.backgroundColor,
          ],
        ),
        child: Icon(
          Icons.arrow_forward_ios,
          color: AppUiColors.selectedIconColor,
          size: 30.0,
        ),
      ),
    );
  }
}
