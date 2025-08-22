import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:lms/constants/apis.dart';

class Networkhelper {
  static const baserUrl = Apis.baseurl;
  Future postapi(String endpoint, Map<String, dynamic> body) async {
    final url = baserUrl + endpoint;

    final finalurl = Uri.parse(url);

    final request = http.MultipartRequest("post", finalurl);

    body.forEach((key, value) {
      request.fields[key] = value.toString();
    });

    log("Url :- $url");
    log("body :- $body");

    final response = await request.send();
    log(response.toString());

    final responseData = await http.Response.fromStream(response);

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseJson = jsonDecode(responseData.body);
      return responseJson;
    } else {
      log("api not working ");
    }
  }

  // get api

  Future  getapi(String endpoint) async {
    final url = baserUrl + endpoint;
    final finalurl = Uri.parse(url);

     final response=  await http.get(finalurl);

     if (response.statusCode == 200 || response.statusCode == 201) {
      final responseJson = jsonDecode(response.body);
      return responseJson;
    } else {
      log("api not working ");
    }
  }
}
