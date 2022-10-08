import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/colors/app_color.dart';
import '../../../data/datasource/static/static.dart';

class CustomControllerOnBoarding extends StatelessWidget {
  const CustomControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller)=>
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onBoardingList.length,
              (index) => AnimatedContainer(
            margin:const EdgeInsets.only(right: 5),
            duration:const Duration(milliseconds: 900),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
                color: controller.currentPage ==index? AppColor.primaryColor: AppColor.color,
                borderRadius: BorderRadius.circular(10)
            ),
          ),),
      ],));
  }
}
