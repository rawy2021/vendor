import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/constant/colors/app_color.dart';
import 'package:vendor/view/wedget/onboarding/custom_slider.dart';
import '../../controller/onboarding_controller.dart';
import '../wedget/onboarding/custom_button.dart';
import '../wedget/onboarding/dot_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
             const Expanded(
                flex: 3,
                child: CustomSlider(),
              ),
                   Expanded(
                flex: 1,
                child: Column(
                children:const [
                  CustomControllerOnBoarding(),
                  Spacer(flex: 2,),
                  CustomButton(),
                ],
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
