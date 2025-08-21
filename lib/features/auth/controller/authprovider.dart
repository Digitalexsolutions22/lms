import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lms/constants/apis.dart';
import 'package:lms/helper/networkhelper.dart';

class Authprovider with ChangeNotifier {
  TextEditingController namecontoller = TextEditingController();
  TextEditingController mobilecontoller = TextEditingController();
  TextEditingController rollnumbercontoller = TextEditingController();
  TextEditingController passwordcontoller = TextEditingController();
  TextEditingController confirmPasswordcontoller = TextEditingController();

  signup(BuildContext context) {
    Map<String, dynamic> body = {
      "name": namecontoller.text,
      "mobile": mobilecontoller.text,
      "roll_number": rollnumbercontoller.text,
      "password": passwordcontoller.text,
    };
    Networkhelper().postapi(Apis.signup, body).then((res) {
      if (res["status"] == "success") {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(res["message"])));
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(res["message"])));
      }
    });
  }

  // login

  TextEditingController mobilelogin = TextEditingController();
  TextEditingController passwordlogin = TextEditingController();

  login(BuildContext context) {
    Map<String, dynamic> body = {
      "mobile": mobilelogin.text,

      "password": passwordlogin.text,
    };
    Networkhelper().postapi(Apis.login, body).then((res) {
      if (res["status"] == "success") {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(res["message"])));
      } else {
         ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(res["message"])));
      }
    });
  }
}
