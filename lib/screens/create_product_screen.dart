import 'dart:io';

import 'package:constructionapp/colors/app_ui_colors.dart';
import 'package:constructionapp/widgets/appbar.dart';
import 'package:constructionapp/widgets/custom_widget.dart';
import 'package:constructionapp/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateProductScreen extends StatefulWidget {
  static const routename = "/create-product";
  @override
  _CreateProductScreenState createState() => _CreateProductScreenState();
}

class _CreateProductScreenState extends State<CreateProductScreen> {
  EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20.0);
  TextEditingController priceController = TextEditingController();
  TextStyle textStyle = TextStyle(
    color: AppUiColors.selectedIconColor,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        print(_image);
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> _showErrorDialog() async {
    showDialog(
      context: context,
      builder: (context) => Center(
        child: AlertDialog(
          content: TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
      appBar: appBarWidget(
        title: "Furniture",
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
            Text(
              "Sofas",
              style: textStyle,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: padding,
              child: InputTextField(hintText: "Enter product name"),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: getImage,
                      child: CustomWidget(
                        radius: 200.0,
                        height: 70.0,
                        width: 110.0,
                        gradient: RadialGradient(
                          colors: [
                            AppUiColors.backgroundColor,
                            AppUiColors.backgroundColor,
                            AppUiColors.backgroundColor,
                            AppUiColors.backgroundColor,
                          ],
                        ),
                        child: Icon(
                          Icons.upload_outlined,
                          color: AppUiColors.selectedIconColor,
                          size: 50.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Upload Image",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: AppUiColors.iconColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _showErrorDialog();
                      },
                      child: CustomWidget(
                        radius: 200.0,
                        height: 70.0,
                        width: 110.0,
                        gradient: RadialGradient(
                          colors: [
                            AppUiColors.backgroundColor,
                            AppUiColors.backgroundColor,
                            AppUiColors.backgroundColor,
                            AppUiColors.backgroundColor,
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "\u{20B9}",
                            style: TextStyle(
                              fontSize: 40.0,
                              color: AppUiColors.selectedIconColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Price Range",
                      style: TextStyle(
                        fontSize: 15.0,
                        color: AppUiColors.iconColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              child: _image == null
                  ? Center(
                      child: Text(
                      'No image selected.',
                      style: TextStyle(
                          color: AppUiColors.iconColor, fontSize: 20.0),
                    ))
                  : Image.file(_image),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: getImage,
                  child: CustomWidget(
                    radius: 200.0,
                    height: 70.0,
                    width: 110.0,
                    gradient: RadialGradient(
                      colors: [
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: AppUiColors.selectedIconColor,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _showErrorDialog();
                  },
                  child: CustomWidget(
                    radius: 200.0,
                    height: 70.0,
                    width: 110.0,
                    gradient: RadialGradient(
                      colors: [
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                        AppUiColors.backgroundColor,
                      ],
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: AppUiColors.selectedIconColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
