import 'dart:developer';

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

  List<Map<String, dynamic>> subjects = [
    {"id": 1, "subject": "Digital Electronics"},
    {"id": 2, "subject": "Analog Communication"},
    {"id": 3, "subject": "Signals and Systems"},
    {"id": 4, "subject": "Microprocessors"},
    {"id": 5, "subject": "VLSI Design"},
  ];

  List<Subjectmodel> subjects1 = [
    Subjectmodel(id: 1, subject: "VLSI Design"),
    Subjectmodel(id: 2, subject: "VLSI Design"),
    Subjectmodel(id: 1, subject: "VLSI Design"),
    Subjectmodel(id: 1, subject: "VLSI Design"),
    Subjectmodel(id: 1, subject: "VLSI Design"),
  ];

  fun() {
    log(subjects1[1].subject);
    log(subjects[1]["subject"].toString());
  }
}

class Subjectmodel {
  final int id;
  final String subject;

  Subjectmodel({required this.id, required this.subject});
}
