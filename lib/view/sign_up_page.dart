import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:job_find/view/home_page.dart';
import 'package:job_find/view/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formKey = GlobalKey<FormState>();

  late TextEditingController _txtUsername = TextEditingController(text: "");
  late TextEditingController _txtEmail = TextEditingController(text: "");
  late TextEditingController _txtPassword = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Container(
          height: MediaQuery.of(context).size.height.h,
          width: MediaQuery.of(context).size.width.w,
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
                    Text(
                      "Sign Up, Here",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 7.h),
                    Text(
                      "To continue starting your new journey",
                      style: TextStyle(
                          color: Color(0xff6C6C6C),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp),
                    ),
                    SizedBox(height: 30.h),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Username",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(

                            controller: _txtUsername,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                            cursorColor: Colors.grey.withOpacity(0.3),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.withOpacity(0.3),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please, enter your name here";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(

                            controller: _txtEmail,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                            cursorColor: Colors.grey.withOpacity(0.3),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.withOpacity(0.3),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please, enter your valid email here";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Password",
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(

                            controller: _txtPassword,
                            obscureText: true,
                            style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                            cursorColor: Colors.grey.withOpacity(0.3),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.withOpacity(0.3),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.3),
                                        width: 2))),
                            validator: (value) {
                              if (value!.length < 6 || value.isEmpty) {
                                return "Please, enter more than 6 characters long password";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30.h),
                          Center(
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                height: 40.h,
                                width: 150.w,
                                child: MaterialButton(
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  color: Color(0xffF1CB00),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    }

                                    print("Username: ${_txtUsername.text}");
                                    print("User Email: ${_txtEmail.text}");
                                    print("User Password: ${_txtPassword.text}");

                                  },
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18.sp),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.h),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignInPage()));
                                },
                                child: Text(
                                  "Already have an account? Sign In",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),

                              SizedBox(height: 22.h)
                            ],
                          )),
                        ],
                      ),
                    )
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
