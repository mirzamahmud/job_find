class CompanyInfo
{
  String companyLogo;
  String companyName;
  String jobTitle;
  String comapnyLocation;
  String fullTime;

  List<String> requirements;

  CompanyInfo(

      this.companyLogo,
      this.companyName,
      this.jobTitle,
      this.comapnyLocation,
      this.fullTime,
      this.requirements
      );

  static List<CompanyInfo> generateCompanyList()
  {
    return [

      CompanyInfo(

         "assets/icons/airbnb_logo.png",
         "Airbnb Inc,",
         "VP Business Intelegence",
         "Herminia Stravenue,\nCanada",
         "Full Time",
         [
           "Creative with an eye for shape and color.",
           "Understand different materials and production \nmethods.",
           "Have technical, practical and scientific \nknowledge and ability.",
           "Interested in the way people choose and use \nproducts."
         ]
       ),
      CompanyInfo(

          "assets/icons/google_logo.png",
          "Google LLC,",
          "Product Design",
          "Marion Plaza, Texas \nUnited States",
          "Full Time",
          [
            "Creative with an eye for shape and color.",
            "Understand different materials and production \nmethods.",
            "Have technical, practical and scientific \nknowledge and ability.",
            "Interested in the way people choose and use \nproducts."
          ]
      ),
      CompanyInfo(

          "assets/icons/facebook.png",
          "Facebook",
          "Facebook Marketing",
          "Menlo Park, California \nUnited States",
          "Full Time",
          [
            "Creative with an eye for shape and color.",
            "Understand different materials and production \nmethods.",
            "Have technical, practical and scientific \nknowledge and ability.",
            "Interested in the way people choose and use \nproducts."
          ]
      ),
      CompanyInfo(

          "assets/icons/amazon.png",
          "Amazon",
          "Software Development",
          "Bellevue, Washington \nUnited States",
          "Full Time",
          [
            "Creative with an eye for shape and color.",
            "Understand different materials and production \nmethods.",
            "Have technical, practical and scientific \nknowledge and ability.",
            "Interested in the way people choose and use \nproducts."
          ]
      ),
      CompanyInfo(

          "assets/icons/instagram.png",
          "Instagram",
          "Technical Program Manager",
          "San Francisco, California \nUnited States",
          "Full Time",
          [
            "Creative with an eye for shape and color.",
            "Understand different materials and production \nmethods.",
            "Have technical, practical and scientific \nknowledge and ability.",
            "Interested in the way people choose and use \nproducts."
          ]
      ),
    ];
  }
}