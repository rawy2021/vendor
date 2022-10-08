import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/view/wedget/costum_text_from_auth/custom_button_auth_float.dart';
import '../../../controller/auth/success_signup_controller.dart';
import '../../../core/constant/colors/app_color.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.background,
        elevation: 0.0,
        title: Text("17".tr,style:Theme.of(context).
        textTheme.headline1!.copyWith(color: AppColor.color),),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
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
