import 'package:flutter/material.dart';
import 'package:job_find/model/company_info.dart';
import 'package:job_find/view/widgets/home_page_company_items.dart';

class HomePageCompany extends StatefulWidget {
  const HomePageCompany({Key? key}) : super(key: key);

  @override
  _HomePageCompanyState createState() => _HomePageCompanyState();
}

class _HomePageCompanyState extends State<HomePageCompany> {

  final companyInfoList = CompanyInfo.generateCompanyList();

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 30),
      height: 200,
      child: ListView.separated(

        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),

        itemCount: companyInfoList.length,
        separatorBuilder: (_, index) => SizedBox(width: 25),
        itemBuilder: (context, index)
        {
          return HomePageCompanyItem(companyInfoList[index]);
        },
      ),
    );
  }
}
