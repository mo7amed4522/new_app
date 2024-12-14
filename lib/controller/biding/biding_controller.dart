import 'package:get/get.dart';
import 'package:new_app/core/constants/curd.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
