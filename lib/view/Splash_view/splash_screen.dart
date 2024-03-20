import 'dart:async';

import 'package:dashboard/utils/color.dart';
import 'package:dashboard/view/CheckIn/checkIn_view.dart';
import 'package:dashboard/view/CheckInsOut/check_in_out_view.dart';
import 'package:dashboard/view/Expanses/expenses_view.dart';
import 'package:dashboard/view/Incom/incom_view.dart';
import 'package:dashboard/view/Notification/notification_view.dart';
import 'package:dashboard/view/dashBoard/dashboard_view.dart';
import 'package:dashboard/view/main_tab/main_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const DashBoardView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor,
            secColor,
          ],
          stops: [
            0.1,
            0.8,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/splash_logo.png',
              width: double.maxFinite,
              height: MediaQuery.sizeOf(context).width,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).width * 0.1,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ],
        )),
      ),
    );
  }
}
