import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';
import 'package:lms/custom/inputfield.dart';
import 'package:lms/features/auth/controller/authprovider.dart';
import 'package:lms/features/auth/views/signup.dart';
import 'package:provider/provider.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Authprovider>(
      builder: (context, provider, _) {
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
                  Inputform(
                    hintText: "Phone Number",
                    controller: provider.mobilelogin,
                  ),
                  SizedBox(height: 10),
                  Inputform(
                    hintText: "Password",
                    ispassword: true,
                    controller: provider.passwordlogin,
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      provider.login(context);
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
                          "Sign In",
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
                            MaterialPageRoute(
                              builder: (context) => Signscreen(),
                            ),
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
      },
    );
  }
}
