import 'package:flutter/material.dart';
import 'package:zuri_health_clone/pages/historypage.dart';
import 'package:zuri_health_clone/pages/home.dart';
import 'package:zuri_health_clone/pages/orders.dart';
import 'package:zuri_health_clone/pages/profile.dart';
import 'package:zuri_health_clone/pages/vitals.dart';

//colors
const placeholdercolor = Color.fromRGBO(129, 127, 127, 1);
const loginRegisterBtnColor = Color.fromARGB(255, 239, 238, 238);
const forgotpassBtnColor = Color.fromARGB(255, 255, 221, 31);

const errorColor = Colors.red;

//font size
const double loginRegisterRegularFontSize = 15;

//labels
const String forgotPassTitle = 'Oops, forgot password';
const String registerTitle = 'Create an account';
const String loginTitle = 'Welcome back!';
const String forgotPassSubTitle1 = "Don't worry";
const String forgotPassSubTitle2 = "This will be fast and easy";
const String forgotPassSubTitle3 = "Just enter your registered email address";
const String loginSubTitle = "Sign in as a patient";
const String registerSubTitle =
    "We would need more information to serve you better";

const String firstname = "First name";
const String lastname = "Last name";
const String email = "Email";
const String phonenumber = "Phone number";
const String gender = "Gender";
const String password = "Password";
const String confirmpassword = "Confirm Password";
const String loginbtnText = "L O G I N";
const String registerbtnText = "N E X T";
const String resetPassword = "RESET PASSWORD";

//
const double textfieldBorderRadius = 4;

//padding
const EdgeInsets pagePadding = EdgeInsets.fromLTRB(10, 20, 10, 20);
const EdgeInsets loginRegisterBtnPadding = EdgeInsets.only(top: 10, bottom: 20);
const EdgeInsets titlepadding = EdgeInsets.only(left: 20, top: 20, bottom: 10);
const EdgeInsets subtitlepadding = EdgeInsets.only(left: 20, bottom: 10);


//collections
const List<String> genders = ['Male', 'Female', 'Other'];

//bottom nav bar
List<NavigationDestination> bottomNavBar = [
  NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
  NavigationDestination(icon: Icon(Icons.calendar_month), label: 'History'),
  NavigationDestination(icon: Icon(Icons.description), label: 'Orders'),
  NavigationDestination(icon: Icon(Icons.monitor_heart), label: 'Vitals'),
  NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
];

List pages = [
  const HomePage(),
  const HistoryPage(),
  const OrdersPage(),
  const VitalsPage(),
  const ProfilePage(),
];
