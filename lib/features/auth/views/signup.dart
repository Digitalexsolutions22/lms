import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';
import 'package:lms/custom/inputfield.dart';
import 'package:lms/features/auth/controller/authprovider.dart';
import 'package:provider/provider.dart';

class Signscreen extends StatelessWidget {
  const Signscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Authprovider>(
      builder: (context, provider, _) {
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
                  Inputform(
                    hintText: "Enter Your Name",
                    controller: provider.namecontoller,
                  ),
                  SizedBox(height: 10),
                  Inputform(
                    hintText: "Phone Number",
                    controller: provider.mobilecontoller,
                  ),
                  SizedBox(height: 10),
                  Inputform(
                    hintText: "Roll no",
                    controller: provider.rollnumbercontoller,
                  ),
                  SizedBox(height: 10),
                  Inputform(
                    hintText: "Create Password",
                    ispassword: true,
                    controller: provider.passwordcontoller,
                  ),
                  SizedBox(height: 10),
                  Inputform(
                    hintText: "Confirm Password",
                    ispassword: true,
                    controller: provider.confirmPasswordcontoller,
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      provider.signup(context);
                    },
                    child: Container(
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
      },
    );
  }
}
