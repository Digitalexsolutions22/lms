import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:lms/constants/apis.dart';

class Networkhelper {
  static const baserUrl = Apis.baseurl;
  postapi(String endpoint, Map<String, dynamic> body) async {
    final url = baserUrl + endpoint;

    final finalurl = Uri.parse(url);

    final request = http.MultipartRequest("post", finalurl);

    request.fields.addAll({
      "name": body["name"],
      "mobile": body["mobile"],
      "roll_number": body["roll_number"],
      "password": body["password"],
    });

    final response = await request.send();

    final responseData = await http.Response.fromStream(response);

    if (response.statusCode == 200 || response.statusCode == 201) {
      final responseJson = jsonDecode(responseData.body);
      return responseJson;
    } else {
      log("api not working ");
    }
  }
}
