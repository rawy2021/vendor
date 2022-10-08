import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vendor/core/constant/colors/app_color.dart';

Future<bool> alertExitApp(){
  BorderRadius.circular(100);
  
   Get.defaultDialog(
     
     confirmTextColor: AppColor.primaryColor,
    title: "41".tr,
    middleText: "42".tr,
    actions: [
      ElevatedButton(
        style:  ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(AppColor.primaryColor)),
        onPressed: (){
        exit(0);
      }, child:  Text( "43".tr),),
      ElevatedButton(
          style:  ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all(AppColor.primaryColor),),
          onPressed: (){
        Get.back();
      }, child: Text( "44".tr))
    ]);
  return Future.value(true);
}