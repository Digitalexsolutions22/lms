import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 60, 20, 10),
      color: AppColors.darkBlue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "pavan Kumar",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
          Image.asset("assests/images/solar_wallet-bold.png", height: 25),
        ],
      ),
    );
  }
}
