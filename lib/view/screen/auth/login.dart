import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/colors/app_color.dart';
import 'package:vendor/view/wedget/costum_text_from_auth/custom_body_auth.dart';
import '../../../controller/auth/login-controller.dart';
import '../../../core/function/alert_app_exist.dart';
import '../../../core/function/validinput.dart';
import '../../wedget/costum_text_from_auth/Custom_Text_Auth.dart';
import '../../wedget/costum_text_from_auth/custom_button_auth_float.dart';
import '../../wedget/costum_text_from_auth/custom_logo_auth.dart';
import '../../wedget/costum_text_from_auth/custom_text_sign-in_sign-up.dart';
import '../../wedget/costum_text_from_auth/text_form_field_auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller =
    Get.put(LoginControllerImp());
    return  Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("9".tr,style:Theme.of(context).
        textTheme.headline1!.copyWith(color: AppColor.color),),
      ),
      body: WillPopScope(
        onWillPop:alertExitApp,
        child: Container(
        // margin:const EdgeInsets.only(top: 20),
        child: Form(
          key: controller.formState,
          child: ListView(
            children:  [
              const  LogoAuth(),
              CustomTextAuth(text:"10".tr),
              const  SizedBox(height: 15,),
              CustomBodyAuth(textBody: "11".tr),
              const SizedBox(height: 10,),
              TextFromFiledAuth(
                isNumber: false,
                myController: controller.email,
                hintText:"12".tr,
                labelText: "18".tr,
                iconData: Icons.email_outlined,
                valid: (val) {
                  return validInput(val!, 5, 100, "Email");
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
              Padding(
                padding:const EdgeInsets.only(right: 30),
                child: InkWell(
                  onTap: (){
                    controller.goToForgetPassword();
                  },
                  child: Text("14".tr,
                    // textAlign: TextAlign.end,
                    style:const TextStyle(color: AppColor.primaryColor),),
                ),
              ),
              CustomElevatedButtonAuth(text:'15'.tr, onPressed: () {
                controller.login();
              },),
              const SizedBox(height: 15,),
              CustomTextSignUp(
                  textOne: "16".tr,
                  textTwo: "17".tr,
                  onTap:(){
                    controller.goToSignUp();
                  }
              ),
            ],
          ),
        ),
      ),)
    );
  }
}
