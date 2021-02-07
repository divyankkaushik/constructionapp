import 'package:flutter/material.dart';

import 'package:constructionapp/colors/app_ui_colors.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    this.controller,
    this.hintText,
    this.validatorFunction,
    this.onSavedFunction,
    this.obscureText = false,
    this.keyBoardType,
    this.maxLength,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Function validatorFunction;
  final Function onSavedFunction;
  final bool obscureText;
  final TextInputType keyBoardType;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            // blurRadius: 10.0,
            offset: Offset(-5, -5),
            spreadRadius: 5.0,
          ),
          BoxShadow(
            color: Colors.white38,
            // blurRadius: 10.0,
            offset: Offset(5, 5),
            spreadRadius: 1.0,
          ),
        ],
        gradient: RadialGradient(
          colors: [
            AppUiColors.backgroundColor,
            AppUiColors.backgroundColor,
            AppUiColors.backgroundColor,
            AppUiColors.backgroundColor,
          ],
        ),
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        controller: controller,
        expands: false,
        style: TextStyle(fontSize: 20.0, color: Colors.white38),
        obscureText: obscureText,
        keyboardType: keyBoardType,
        validator: validatorFunction,
        onSaved: onSavedFunction,
        maxLength: maxLength,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.0),
          // prefixIcon: Icon(
          //   Icons.email,
          //   color: Colors.black54,
          // ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white38),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppUiColors.backgroundColor),
            borderRadius: BorderRadius.circular(32.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppUiColors.backgroundColor),
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
