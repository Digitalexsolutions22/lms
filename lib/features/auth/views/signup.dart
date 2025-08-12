import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';

class Signscreen extends StatelessWidget {
  const Signscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Text(
                "Register Your \nAccount",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                "Have a tremendous journey with us",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),

              SizedBox(height: 20),
              Inputform(hintText: "Enter Your Name"),
              SizedBox(height: 10),
              Inputform(hintText: "Phone Number"),
              SizedBox(height: 10),
              Inputform(hintText: "Roll no"),
              SizedBox(height: 10),
              Inputform(hintText: "Create Password", ispassword: true),
              SizedBox(height: 10),
              Inputform(hintText: "Confirm Password", ispassword: true),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.black,
                ),
                child: Center(
                  child: Text(
                    "Sign Up ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an accounts",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    " Sign In",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Inputform extends StatelessWidget {
  final String hintText;
  final bool? ispassword;
  const Inputform({super.key, required this.hintText, this.ispassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        suffixIcon: ispassword == true ? Icon(Icons.visibility) : null,
        hintText: hintText,

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
