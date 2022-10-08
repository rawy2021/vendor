import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';

abstract class LoginController extends GetxController{
  login();
  goToSignUp();
  goToForgetPassword();

}

class LoginControllerImp extends LoginController{

  GlobalKey <FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  bool isShowPassword =true;

  showPassword(){
    isShowPassword = isShowPassword == true ? false :true;
    update();
    //Get.delete<LoginControllerImp>();
  }
  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signUp);
  }

  @override
  login() {
    //var formatData = formState.currentS?.ate;
    if(formState.currentState!.validate()){
      return "validate";
    }else{
      return "Not validate";
    }
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
    throw UnimplementedError();
  }

}