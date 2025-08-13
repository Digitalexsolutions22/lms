import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';
import 'package:lms/custom/appbar.dart';

class Bookdeatils extends StatelessWidget {
  const Bookdeatils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Appbar(),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assests/images/Rectangle 15 (1).png",
                    scale: 3,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "The Exchange , a novel by John Grisham",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),

                Text(
                  "The Exchange is a legal thriller and the long-awaited sequel to John Grisham’s 1991 bestseller The Firm. In The Firm, readers met Mitch McDeere, a young Harvard law graduate who unknowingly joined a corrupt Memphis law firm tied to the mob. After narrowly escaping with his life and bringing down the firm, Mitch went into hiding with his wife, Abby.Now, in The Exchange, nearly 15 years have passed, and Mitch is no longer the young, naive lawyer he once was. He has rebuilt his life and reputation. He works for Scully & Pershing, one of the world's largest and most powerful law firms, headquartered in New York City. Mitch is now a respected partner and often handles high-stakes, international legal cases.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.darkBlue,
                  ),
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
