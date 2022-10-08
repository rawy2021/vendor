import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';


abstract class VerFiyCodeController extends GetxController{
  checkCode();
  goToResetPassword();
}

class VerFiyCodeControllerImp extends VerFiyCodeController{

  late String verFiyCode;

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.verFiyCodeSignup);
  }

  @override
  checkCode() {

  }
  @override
  void onInit() {
    super.onInit();
  }


}