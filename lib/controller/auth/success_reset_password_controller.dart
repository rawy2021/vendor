import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController{
  goToPageLogin();

}
class SuccessResetPasswordControllerImp extends SuccessResetPasswordController{
  @override
  goToPageLogin() {
    Get.offNamed(AppRoutes.login);
  }

}