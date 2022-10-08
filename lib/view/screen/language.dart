import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/routes.dart';
import '../../core/constant/colors/app_color.dart';
import '../../core/localaization/changelocal.dart';
import '../wedget/language/custom_bottun_language.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Container (
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr,style: Theme.of(context).textTheme.headline1,),
            const SizedBox(height: 20,),
            CustomButtonLanguage(textButton: "ar",onPressed:(){
              controller.changeLang("ar");
              Get.toNamed(AppRoutes.onBoarding);
            }),
            CustomButtonLanguage(textButton: "en",onPressed: (){
              controller.changeLang("en");
              Get.toNamed(AppRoutes.onBoarding);
            },),
          ],
        ),
      ),
    );
  }
}
