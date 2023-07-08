import 'package:flutter/material.dart';


class HomePageSearchBox extends StatefulWidget {
  const HomePageSearchBox({Key? key}) : super(key: key);

  @override
  _HomePageSearchBoxState createState() => _HomePageSearchBoxState();
}

class _HomePageSearchBoxState extends State<HomePageSearchBox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Container(

        margin: EdgeInsets.only(top: 20),
        height: 250,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(

            alignment: Alignment.center,
            image: AssetImage("assets/images/search_bg.png"),
            fit: BoxFit.cover
          )
        ),

        child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 22),

                Text(
                  "Fast Search",
                  style: TextStyle(

                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w600,
                    fontSize: 25
                  ),
                ),
                SizedBox(height: 10),

                Text(
                  "You can search quickly for",
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 5),

                Text(
                  "the job you want",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 30),

                TextField(

                    textAlign: TextAlign.left,
                    showCursor: true,
                    cursorColor: Colors.grey.withOpacity(0.5),
                    decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        prefixIcon: Icon(

                          Icons.search,
                          color: Color(0xff787878).withOpacity(0.7),
                          size: 25,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(

                          color: Color(0xff939393),
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                        )
                    )
                ),

              ],
            ),
        ),

      ),
    );
  }
}
