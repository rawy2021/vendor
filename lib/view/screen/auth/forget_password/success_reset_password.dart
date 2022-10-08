import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/controller/auth/success_reset_password_controller.dart';
import '../../../../core/constant/colors/app_color.dart';
import '../../../wedget/costum_text_from_auth/custom_button_auth_float.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
    Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("36".tr,style:Theme.of(context).
        textTheme.headline6!.copyWith(color: AppColor.color),),
      ),

      body: Container(
        padding:const EdgeInsets.all(10),
        child: Column(
          children: [
           const Center(child: Icon(Icons.check_circle_outline,
              size: 200,
              color: Colors.green,
            ),),
            Text("37".tr,style: Theme.of(context).textTheme.headline1),
           const Spacer(),
            Container(
              width: double.infinity,
              child: CustomElevatedButtonAuth(
                  text: "31".tr,
                  onPressed: (){
                    controller.goToPageLogin();
                  }),)
          ],
        ),
      ),
    );
  }
}
