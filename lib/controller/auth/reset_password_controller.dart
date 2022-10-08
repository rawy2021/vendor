import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';


abstract class ResetPasswordController extends GetxController{

  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController{

  late TextEditingController password;
  late TextEditingController repassword;

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successResetPassword);
  }

  @override
  resetPassword() {

  }
  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}