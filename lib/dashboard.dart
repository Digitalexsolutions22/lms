import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lms/constants/colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

List pages = [Center(child: Text("page1")), Center(child: Text("page2"))];

int selectedindex = 0;

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    log("build again");
    return Scaffold(
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        backgroundColor: AppColors.black,
        selectedItemColor: AppColors.orange,
        unselectedItemColor: AppColors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
      ),
    );
  }
}
