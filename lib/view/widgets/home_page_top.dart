import 'package:flutter/material.dart';


class HomePageTop extends StatefulWidget {
  const HomePageTop({Key? key}) : super(key: key);

  @override
  _HomePageTopState createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Container(

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(

                  "Welcome home",
                  style: TextStyle(

                    color: Color(0xff787878),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
                SizedBox(height: 10),

                Text(

                  "Annie Bryant",
                  style: TextStyle(

                    color: Color(0xff000000),
                    fontSize: 32,
                    fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
            Row(

              children: [

                Container(

                  padding: EdgeInsets.only(top: 60, right: 40),
                  transform: Matrix4.rotationZ(100),
                  child: Stack(

                    children: [

                      Icon(

                        Icons.notifications_none_outlined,
                        color: Colors.black.withOpacity(0.8),
                        size: 30,
                      ),
                      Positioned(

                        top: 0, right: 0,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                          
                            color: Color(0xffEC2323),
                            shape: BoxShape.circle
                          ),
                        )
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),

                ClipOval(

                    child: Image(

                      image: AssetImage("assets/icons/avatar.png"),
                      height: 55,
                      width: 55,
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
