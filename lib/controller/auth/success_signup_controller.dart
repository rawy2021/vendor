import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController{
  goToPageLogin();

}
class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToPageLogin() {
    Get.offNamed(AppRoutes.login);
  }

}