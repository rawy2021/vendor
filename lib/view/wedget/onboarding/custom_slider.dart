import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/colors/app_color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChange(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context,i)=>
          Column(
            children: [
              Container(
                margin:const EdgeInsets.only(top: 25),
                child: Text(onBoardingList[i].title!,
                  style:const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),),
              ),
              const SizedBox(height: 1,),
              Image.asset(onBoardingList[i].image!,
                width: 200,
                height: 300,),
              const SizedBox(height: 1,),
              Container(
                padding:const EdgeInsets.all(20),
                width: double.infinity,
                child: Text(onBoardingList[i].body!,
                  textAlign: TextAlign.center,
                  style:const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                    color: AppColor.color,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),);
  }
}
