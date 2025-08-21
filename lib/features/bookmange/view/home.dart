import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';
import 'package:lms/custom/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Appbar(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(555),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(80),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search for Books",

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Image.asset("assests/images/Rectangle 12.png"),
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10),

                  SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            right: 40,
                            top: 2,
                            bottom: 2,
                            left: 2,
                          ),
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
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assests/images/Ellipse 1 (1).png",
                                  scale: 3,
                                ),
                              ),
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
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Books",
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
