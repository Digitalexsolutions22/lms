import 'package:flutter/material.dart';

class Inputform extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool? ispassword;
  const Inputform({
    super.key,
    required this.hintText,
    this.ispassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: ispassword == true ? true : false,
      decoration: InputDecoration(
        suffixIcon: ispassword == true ? Icon(Icons.visibility) : null,
        hintText: hintText,

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
