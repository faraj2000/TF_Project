

import 'package:get/get.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {}
  Future<Response> getAllUser() =>
      get('https://jsonplaceholder.typicode.com/users');
}
