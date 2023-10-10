import 'package:get/get.dart';
import 'package:dooit/controller/controllertext.dart';

class controllerbind extends Bindings {
  @override
  void dependencies() {
    Get.put(textcontroller());
  }
}
