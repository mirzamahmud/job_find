import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:job_find/view/start_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => StartPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width.w,
            height: MediaQuery.of(context).size.height.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/job_find_bg_1.png"),
                    fit: BoxFit.cover)),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/icons/find_job.png"),
                      height: 150.h,
                      width: 150.h,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Find Job",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                          fontSize: 30.sp),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
