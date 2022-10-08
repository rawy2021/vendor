import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';


abstract class ForgetPasswordController extends GetxController{
  checkEmail();
  goToVeryFiyCode();
}

class ForgetPasswordControllerSImp extends ForgetPasswordController{

  late TextEditingController email;
  GlobalKey <FormState> formState = GlobalKey<FormState>();


  @override
  goToVeryFiyCode() {
    if(formState.currentState!.validate()){
      Get.offNamed(AppRoutes.verFiyCodeSignup);
      Get.delete<ForgetPasswordControllerSImp>();
    }else{
      return "Not validate";
    }
  }

  @override
  checkEmail() {

  }
  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

}