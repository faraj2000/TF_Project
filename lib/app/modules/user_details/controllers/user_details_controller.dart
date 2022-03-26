import 'package:get/get.dart';
class User_detailsPram{

  String usersname;
  String name;
  String email;
  String phone;
  String website;
  String addressStreet;
  String addressSuite;
  String addressCity;
  String addressZipcode;
  String addressGeolat;
  String addressGeolng;
  String companyName;
  String companyCatchPhrase;
  String companyBs;

  User_detailsPram(
      {

        required this.name,
        required this.usersname,
        required this.email,
        required this.phone,
        required this.website,
        required this.addressStreet,
        required this.addressSuite,
        required this.addressCity,
        required this.addressZipcode,
        required this.addressGeolat,
        required this.addressGeolng,
        required this.companyName,
        required this.companyCatchPhrase,
        required this.companyBs,



      }
      );
}
class UserDetailsController extends GetxController {


  late User_detailsPram param;
  @override
  void onInit() {
    param=Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
