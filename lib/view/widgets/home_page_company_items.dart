import 'package:flutter/material.dart';

import 'package:job_find/model/company_info.dart';

class HomePageCompanyItem extends StatelessWidget
{

  final CompanyInfo cInfo;
  HomePageCompanyItem(this.cInfo);

  @override
  Widget build(BuildContext context) {
    return Container(

          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.teal.withOpacity(0.5), width: 1.5)
          ),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Row(

                    children: [

                      Container(

                        alignment: Alignment.center,
                        padding: EdgeInsets.all(8),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff787878).withOpacity(0.2)
                        ),
                        child: Image.asset(cInfo.companyLogo),
                      ),
                      SizedBox(width: 20),

                      Text(
                        cInfo.companyName,
                        style: TextStyle(

                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20
                        ),
                      )
                    ],
                  ),
                  IconButton(

                    onPressed: (){},
                    icon: Icon(

                      Icons.bookmark_border_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),

              Text(

                cInfo.jobTitle,
                style: TextStyle(

                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700
                ),
              ),
              SizedBox(height: 15),

              Row(

                children: [

                  Icon(

                    Icons.place,
                    size: 25,
                    color: Colors.amber,
                  ),
                  SizedBox(width: 15),

                  Text(

                    cInfo.comapnyLocation,
                    style: TextStyle(

                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                    ),
                  )
                ],
              )

            ],
          ),
        );
  }
}


