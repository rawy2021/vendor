import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/colors/app_color.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin:const EdgeInsets.only(bottom: 40),
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: (){
          controller.next();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        child: Text("40".tr,
          style:const TextStyle(
            color: Colors.white,
          ),
        ),

      ),
    );
  }
}
