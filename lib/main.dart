import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: Locale('en'),
      translationsKeys: translationsKeys,
      themeMode: ThemeMode.light,
      theme: ThemeData.light().copyWith(
        backgroundColor: Colors.yellow,
      ),
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: Colors.purple,
      ),
    ),
  );
}

final translationsKeys = {
  'en': {

    'Client_page': 'Clients Page',
    'Settings':'Setting',
    'Wait...':'Wait...',
    'Setting_Page':'App Setting',
    'Dark':'Dark Theme',
    'Light':'Light Theme',
    'Arabic':'Arabic',
    'English':'English',
    'Client_details':'Client Details',
    'NAME:':'Name: ',
    'username:':'Username: ',
    'phone:':'Phone: ',
    'email:':'Email: ',
    'website:':'Website: ',
    'addressStreet:':'addressStreet: ',
    'addressSuite:':'addressSuite: ',
    'addressZipcode:':'Zipcode: ',
    'addressCity:':'addressCity: ',
    'addressGeolat:':'addressGeolat: ',
    'addressGeolng:':'addressGeolng: ',
    'companyName:':'companyName: ',
    'companyCatchPhrase:':'CacompanyCatchPhrase: ',
    'companyBs:':'companyBs: ',




  },
  'ar': {

    'Client_page': 'العملاء',
    'Settings':'الاعدادات',
    'Wait...':'انتظزر... ',
    'Setting_Page':'الاعدادات',
    'Dark':'وضع الليل',
    'Light':'وضع النهار',
    'Arabic':'العربية ',
    'English':'الانجليزية',
    'Client_details':'تفاصيل المستخدم ',
    'NAME:':'الاسم: ',
    'username:':'اسم العميل: ',
    'phone:':'الهاتف: ',
    'email:':'البريد الالكتروني: ',
    'website:':'موقع الكتروني: ',
    'addressStreet:':'الشارع: ',
    'addressSuite:':'القسم: ',
    'addressZipcode:':'الرمز البريدي: ',
    'addressCity':'المدينة: ',
    'addressGeolat:':'العنوان الجغرافي: ',
    'addressGeolng':'العنوان الجغرافي lng: ',
    'companyName:':'اسم الشركة: ',
    'companyCatchPhrase:':'الدخل الشهري: ',
    'companyBs:':'شركة ب.اس: ',



  },
};
