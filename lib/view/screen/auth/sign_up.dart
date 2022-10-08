import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/colors/app_color.dart';
import 'package:vendor/core/function/alert_app_exist.dart';
import 'package:vendor/view/wedget/costum_text_from_auth/custom_body_auth.dart';
import '../../../controller/auth/login-controller.dart';
import '../../../controller/auth/sign_up_controller.dart';
import '../../../core/function/validinput.dart';
import '../../wedget/costum_text_from_auth/custom_button_auth_float.dart';
import '../../wedget/costum_text_from_auth/custom_text_sign-in_sign-up.dart';
import '../../wedget/costum_text_from_auth/text_form_field_auth.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller =
    Get.put(SignUpControllerImp());
    return  Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("17".tr,style:Theme.of(context).
        textTheme.headline1!.copyWith(color: AppColor.color),),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: Container(
        // margin:const EdgeInsets.only(top: 20),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              CustomBodyAuth(textBody: "24".tr),
              const SizedBox(height: 10,),
              TextFromFiledAuth(
                isNumber: false,
                myController: controller.email,
                hintText:"12".tr,
                labelText: "18".tr,
                iconData: Icons.email_outlined,
                valid: (val) {
                  return validInput(val!, 5, 100, "email");
                },
              ),
              TextFromFiledAuth(
                isNumber: false,
                myController: controller.userName,
                hintText:"23".tr,
                labelText: "20".tr,
                iconData: Icons.verified_user,
                valid: (val) {
                  return validInput(val!, 5, 20, "userName");
                },
              ),
              TextFromFiledAuth(
                isNumber: true,
                myController: controller.phone,
                hintText:"22".tr,
                labelText: "21".tr,
                iconData: Icons.phone_android_outlined,
                valid: (val) {
                  return validInput(val!, 8, 11, "Phone");
                },
              ),
              GetBuilder<LoginControllerImp>(builder: (controller)=>
                  TextFromFiledAuth(
                    obscureText: controller.isShowPassword,
                    onTapIcon: (){
                      controller.showPassword();
                    },
                    isNumber: false,
                    myController: controller.password,
                    hintText: "13".tr,
                    labelText: "19".tr,
                    iconData: Icons.lock,
                    valid: (val) {
                      return validInput(val!, 4, 8, "Password");
                    },
                  ),
              ),
              const SizedBox(height: 8,),
              CustomElevatedButtonAuth(
                text: '9'.tr,
                onPressed: () {
                  controller.signUp();
                },),
              const SizedBox(height: 15,),
              CustomTextSignUp(
                onTap: (){
                  controller.goToSignIn();
                },
                textOne: '25'.tr,
                textTwo: '17'.tr,),
            ],
          ),
        ),
      ),)
    );
  }
}
