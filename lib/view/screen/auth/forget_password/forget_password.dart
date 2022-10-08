import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/controller/auth/forget_password_controller.dart';
import 'package:vendor/core/constant/colors/app_color.dart';
import 'package:vendor/view/wedget/costum_text_from_auth/custom_body_auth.dart';
import '../../../../core/function/validinput.dart';
import '../../../wedget/costum_text_from_auth/Custom_Text_Auth.dart';
import '../../../wedget/costum_text_from_auth/custom_button_auth_float.dart';
import '../../../wedget/costum_text_from_auth/text_form_field_auth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerSImp controller =
    Get.put(ForgetPasswordControllerSImp());
    return  Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("Forget Password",style:Theme.of(context).
        textTheme.headline1!.copyWith(color: AppColor.color),),
      ),
      body: Container(
        margin:const EdgeInsets.only(top: 30),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              CustomTextAuth(text: '38'.tr,),
              const SizedBox(height: 20,),
              CustomBodyAuth(textBody: "12".tr),
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
              const SizedBox(height: 8,),
              Container(
                margin:const EdgeInsets.only(top: 15,left: 15,right: 15,),
                padding:const EdgeInsets.all(8),
                child:  CustomElevatedButtonAuth(
                  text: '30'.tr,
                  onPressed: (){
                    controller.goToVeryFiyCode();
                  },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
