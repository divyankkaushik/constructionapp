import 'package:flutter/material.dart';

class AppUser with ChangeNotifier {
  final String name;
  final int phoneNumber;
  final String userImage;
  AppUser({
    this.name,
    this.phoneNumber,
    this.userImage,
  });
}
