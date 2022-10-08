import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';

abstract class SignUpController extends GetxController
{
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController
{

  late TextEditingController email;
  late TextEditingController userName;
  late TextEditingController phone;
  late TextEditingController password;
  GlobalKey <FormState> formState = GlobalKey<FormState>();
  @override
  goToSignIn()
  {
    Get.offNamed(AppRoutes.login);
  }

  @override
  signUp()
  {
    //var formatData = formState.currentS?.ate;
      if(formState.currentState!.validate()){
        Get.offNamed(AppRoutes.verFiyCodeSignup);
        //Get.delete<SignUpControllerImp>();
      }else{
        return "Not validate";
      }
  }
  @override
  void onInit() {
    email    = TextEditingController();
    userName = TextEditingController();
    phone    = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    userName.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

}