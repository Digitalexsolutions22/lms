import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';
import 'package:lms/custom/appbar.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Appbar(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Text Books",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),

                  SizedBox(height: 20),

                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 280,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                    ),

                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(100),
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.asset("assests/images/Rectangle 15 (1).png"),
                            SizedBox(height: 10),
                            Text(
                              "General",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
