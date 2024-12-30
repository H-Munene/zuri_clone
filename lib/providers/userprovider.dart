// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String username;
  String email;
  String phonenumber;

  UserProvider({this.username = '', this.email = '', this.phonenumber = ''});

  void showUsername(String firstname, String lastname) {
    String _username = "$lastname $firstname";
    username = _username;
    notifyListeners();
  }

  void showPhonenumber(String _phonenumber) {
    phonenumber = _phonenumber;
    notifyListeners();
  }

  void showEmail(String _email) {
    email = _email;
    notifyListeners();
  }
}
