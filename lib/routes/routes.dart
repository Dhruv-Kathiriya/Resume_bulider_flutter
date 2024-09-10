import 'package:flutter/material.dart';
import 'package:resume_bulider_app/view/screens/carrierpage/carrier.dart';
import 'package:resume_bulider_app/view/screens/declarationpage/declaration.dart';
import 'package:resume_bulider_app/view/screens/educationpage/education.dart';
import 'package:resume_bulider_app/view/screens/pdfpage/pdf.dart';
import 'package:resume_bulider_app/view/screens/skillpage/skill.dart';
import 'package:resume_bulider_app/view/screens/splachscreens/splach.dart';

import '../../view/screens/homepage/homepage.dart';
import '../view/screens/contactinfopage/contact.dart';
import '../view/screens/experiencepage/experience.dart';

class Routes {
  static String splachscreen = '/';
  static String homepage = 'home_page';
  static String detailpage = 'details_page';
  static String educationspage = 'educations_page';
  static String carrierpage = 'carrier_page';
  static String skillpage = 'skill_page';
  static String experiencepage = 'experience_page';
  static String declarationpage = 'declaration_page';
  static String pdfpage = 'pdf_page';

  static Map<String, WidgetBuilder> myroutes = {
    splachscreen: (context) => const Spalshscreen(),
    homepage: (context) => const HomePage(),
    detailpage: (context) => const ContactPage(),
    educationspage: (context) => const EducationPage(),
    carrierpage: (context) => const Carrier(),
    skillpage: (context) => const Skillpage(),
    experiencepage: (context) => const Experiance(),
    declarationpage: (context) => const Declaration(),
    pdfpage: (context) => const Pdf(),
  };
}
