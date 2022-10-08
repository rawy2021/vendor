import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/services/services.dart';
import 'package:vendor/data/datasource/static/static.dart';

import '../core/constant/routes.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChange(int index);
}
class OnBoardingControllerImp extends OnBoardingController{

  late PageController pageController;
  int currentPage  = 0;

  MyServices myServices = Get.find();

  @override
  next() {
    currentPage ++;
    if(currentPage>onBoardingList.length-1){
      myServices.sharedPreferences.setString("OnBoarding", "1");
      Get.offAllNamed(AppRoutes.login);
    }else{
      pageController.animateToPage(
          currentPage,
          duration:const Duration(milliseconds: 900),
          curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
 }