import 'package:flutter/material.dart';


class HomePageButtons extends StatefulWidget
{
  const HomePageButtons({Key? key}) : super(key: key);

  @override
  _HomePageButtonsState createState() => _HomePageButtonsState();
}

class _HomePageButtonsState extends State<HomePageButtons> {

  final _buttonList = <String>["All", "⚡ Popular", "⭐ Featured", "🔥 Favourite"];
  var selectedButton = 0;

  @override
  Widget build(BuildContext context)
  {
    return Container(

      height: 50,

      child: ListView.separated(

        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),

        itemCount: _buttonList.length,
        separatorBuilder: (_, index) => SizedBox(width: 15),
        itemBuilder: (context, index)
        {
          return  MaterialButton(

              color: selectedButton == index ? Colors.teal.withOpacity(0.4) : Colors.white,
              elevation: 0,
              onPressed: (){

                setState(() {
                  selectedButton = index;
                });
              },
              shape: RoundedRectangleBorder(

                side: BorderSide(

                  color: selectedButton == index ? Colors.teal.withOpacity(0.4) : Colors.teal
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Align(

                alignment: Alignment.center,
                child: Text(

                  _buttonList[index],
                  style: TextStyle(

                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
          );
        }
      ),
    );
  }
}
