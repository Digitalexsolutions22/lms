import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';
import 'package:lms/custom/appbar.dart';

class Profilenew extends StatelessWidget {
  const Profilenew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Appbar(),
          SizedBox(height: 10),
          Stack(
            children: [
              Image.asset(
                "assests/images/Vector (36).png",
                color: AppColors.orange,
              ),
              Positioned(
                bottom: 10,
                child: Text(
                  "data",
                  style: TextStyle(color: AppColors.white, fontSize: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
