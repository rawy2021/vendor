import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vendor/core/constant/colors/app_color.dart';
import 'package:vendor/view/wedget/costum_text_from_auth/custom_body_auth.dart';
import 'package:vendor/view/wedget/costum_text_from_auth/custom_button_auth_float.dart';
import '../../../../controller/auth/login-controller.dart';
import '../../../../controller/auth/reset_password_controller.dart';
import '../../../../core/function/validinput.dart';
import '../../../wedget/costum_text_from_auth/text_form_field_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
    Get.put(ResetPasswordControllerImp());
    return  Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("39".tr,style:Theme.of(context).
        textTheme.headline1!.copyWith(color: AppColor.color),),
      ),
      body: Container(
        // margin:const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
             CustomBodyAuth(textBody: "34".tr),
            const SizedBox(height: 10,),
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
            CustomElevatedButtonAuth(text:"33".tr, onPressed: () {
              controller.goToSuccessResetPassword();
            },),
          ],
        ),
      ),
    );
  }
}
