import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';


abstract class VerFiyCodeSignUpController extends GetxController{
  checkCode();
  goToSuccessSignUp();
}

class VerFiyCodeSignUpControllerImp extends VerFiyCodeSignUpController{

  late String verFiyCode;

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }

  @override
  checkCode() {

  }
  @override
  void onInit() {
    super.onInit();
  }


}