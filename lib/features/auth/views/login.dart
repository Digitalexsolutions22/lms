import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';
import 'package:lms/features/auth/views/signup.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lets Sign you in",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Image.asset("assests/images/Rectangle 52.png"),
              SizedBox(height: 20),
              Inputform(hintText: "Phone Number"),
              SizedBox(height: 10),
              Inputform(hintText: "Password", ispassword: true),
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
                    "Sign In",
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
                    "Don’t have an account,",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: AppColors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signscreen()),
                      );
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.orange,
                      ),
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
      obscureText: ispassword == true ? true : false,
      decoration: InputDecoration(
        suffixIcon: ispassword == true ? Icon(Icons.visibility) : null,
        hintText: hintText,

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
