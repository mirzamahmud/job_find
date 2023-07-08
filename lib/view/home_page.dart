import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:job_find/view/widgets/home_page_buttons.dart';
import 'package:job_find/view/widgets/home_page_comapny.dart';
import 'package:job_find/view/widgets/home_page_search_box.dart';
import 'package:job_find/view/widgets/home_page_top.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

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

                  image: AssetImage("assets/images/job_find_bg_3.png"),
                  fit: BoxFit.cover
              )
          ),

          child: SingleChildScrollView(

            child: SafeArea(

              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(

                  children: [

                    SizedBox(height: 22.h),

                    HomePageTop(),
                    HomePageSearchBox(),
                    SizedBox(height: 30),

                    HomePageButtons(),
                    HomePageCompany()

                  ],
                ),
              ),
            ),
          ),

        ),

        bottomNavigationBar: CurvedNavigationBar(

          key: _bottomNavigationKey,
          index: 2,
          height: 55,

          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),

          backgroundColor: Colors.white,
          color: Colors.teal.withOpacity(0.7),
          buttonBackgroundColor: Colors.teal,
          
          items: [

            Icon(Icons.home, size: 25, color: Colors.white),
            Icon(Icons.card_travel, size: 25, color: Colors.white),
            Icon(
                Icons.add,
                size: 25,
                color: Colors.white
            ),
            Icon(Icons.extension, size: 25, color: Colors.white),
            Icon(Icons.person, size: 25, color: Colors.white)
          ],


        ),
      ),
    );
  }
}
