import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/colors/app_color.dart';
import 'package:vendor/view/wedget/costum_text_from_auth/custom_body_auth.dart';
import '../../../../controller/auth/verfiy_code_controller.dart';

class VerFiyCode extends StatelessWidget {
  const VerFiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerFiyCodeControllerImp controller =
    Get.put(VerFiyCodeControllerImp());
    return  Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("27".tr,style:Theme.of(context).
        textTheme.headline1!.copyWith(color: AppColor.color),),
      ),
      body: Container(
        child: ListView(
          children: [
             CustomBodyAuth(textBody: "29".tr),
            const SizedBox(height: 10,),
            OtpTextField(
              borderRadius:const BorderRadius.all(Radius.circular(20)),
              fieldWidth: 50,
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {
              },
              onSubmit: (String verificationCode){
                controller.goToResetPassword();
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("27".tr),
                        content: Text('30 $verificationCode'.tr),
                      );
                    }
                );
              }, // end onSubmit
            ),
          ],

        ),
      ),
    );
  }
}

