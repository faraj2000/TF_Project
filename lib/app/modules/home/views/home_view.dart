import 'package:assig/app/modules/user_details/controllers/user_details_controller.dart';
import 'package:assig/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Client_page'.tr),
          centerTitle: true,
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Get.toNamed(Routes.SETTINGS_PAGE);
              },
              child: Text('Setting'.tr),

            ),
          ],
        ),
        body: controller.obx(
          (state) => ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.USER_DETAILS,
                      arguments: User_detailsPram(
                          name: state?[index].name ?? "",
                          usersname: state?[index].username ?? "",
                          email: state?[index].email ?? "",
                          phone: state?[index].phone ?? "",
                          website: state?[index].website ?? "",
                          addressStreet: state?[index].address?.street ?? "",
                          addressSuite: state?[index].address?.suite ?? "",
                          addressCity: state?[index].address?.city ?? "",
                          addressZipcode: state?[index].address?.zipcode ?? "",
                          addressGeolat: state?[index].address?.geo?.lat ?? "",
                          addressGeolng: state?[index].address?.geo?.lng ?? "",
                          companyName: state?[index].company?.name ?? "",
                          companyCatchPhrase: state?[index].company?.catchPhrase ?? "",
                          companyBs: state?[index].company?.bs ?? ""));
                },

                  child:Card(
                  child:  ListTile(
                    title: Text(state?[index].name ?? "",style: TextStyle(
                        fontSize: 20,

                        color: Colors.blue),),
                    subtitle: Text(state?[index].username ?? "",style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        color: Colors.blueGrey),),

                  ),
                  ),
              );
            },
            itemCount: state?.length,
          ),

          onLoading: Center(
              child: Text('Wait...'.tr)),
          // onError:(error) => Text("Faild to load Data"),
        ));
  }
}
