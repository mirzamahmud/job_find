import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:job_find/view/sign_in_page.dart';
import 'package:job_find/view/sign_up_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width.w,
          height: MediaQuery.of(context).size.height.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/job_find_bg_2.png"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 22.h),
                    Image(
                      image: AssetImage("assets/icons/find_job.png"),
                      height: 100.h,
                      width: 105.w,
                    ),
                    SizedBox(height: 10.h),
                    Text("Welcome, User",
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: 7.h),
                    Text(
                      "Start your new journey from here",
                      style: TextStyle(
                          color: Color(0xff6C6C6C),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 45.h),
                    Center(
                      child: Container(
                        width: 320,
                        height: 250,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/employee.jpg"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Row(
                      children: [
                        MaterialButton(
                          elevation: 0.5,
                          height: 45.h,
                          minWidth: 150.w,
                          color: Color(0xff757FDA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        MaterialButton(
                          elevation: 0.5,
                          height: 45.h,
                          minWidth: 150.w,
                          color: Color(0xffDF3D3D),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
