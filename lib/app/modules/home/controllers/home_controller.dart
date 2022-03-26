import 'package:assig/app/modules/home/providers/user_provider.dart';
import 'package:assig/app/modules/home/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<User>> {
  //TODO: Implement HomeController


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    callApi();
    super.onReady();
  }

  @override
  void onClose() {}

  void callApi() async {
    final provider = UserProvider();
    final response = await provider.getAllUser();
    await Future.delayed(Duration(seconds: 2));
    final users = (response.body as List).map((e) => User.fromJson(e)).toList();
    change(users, status: RxStatus.success());
  }

}
