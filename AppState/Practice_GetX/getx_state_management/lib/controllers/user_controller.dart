import 'package:get/get.dart';
import 'package:getx_state_management/models/user.dart';

class UserController extends GetxController {
  final user = User().obs;

  updateUser(int count) {
    //Which is better??

    //Option #1
    user().name = "Ankita";
    user().count = count;

    //Option #2
    user.update((value) {
      value!.name = 'Ankita';
      value.count = count;
    });
  }
}
