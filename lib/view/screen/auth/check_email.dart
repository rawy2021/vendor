// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:vendor/core/constant/colors/app_color.dart';
// import 'package:vendor/view/wedget/costum_text_from_auth/custom_body_auth.dart';
// import 'package:vendor/view/wedget/costum_text_from_auth/custom_button_auth_float.dart';
// import '../../../controller/auth/check_email_controller.dart';
// import '../../wedget/costum_text_from_auth/Custom_Text_Auth.dart';
// import '../../wedget/costum_text_from_auth/text_form_field_auth.dart';
//
// class CheckEmail extends StatelessWidget {
//   const CheckEmail({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     CheckEmailControllerImp controller =
//     Get.put(CheckEmailControllerImp());
//     return  Scaffold(
//       backgroundColor: AppColor.background,
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: AppColor.background,
//         elevation: 0.0,
//         title: Text("27".tr,style:Theme.of(context).
//         textTheme.headline1!.copyWith(color: AppColor.color),),
//       ),
//       body: Container(
//         margin:const EdgeInsets.only(top: 30),
//         child: ListView(
//           children: [
//              CustomTextAuth(text: '28'.tr,),
//             const SizedBox(height: 10,),
//              CustomBodyAuth(textBody: "27".tr),
//             const SizedBox(height: 10,),
//             TextFromFiledAuth(
//               myController: controller.email,
//               hintText:"12".tr,
//               labelText: "18".tr,
//               iconData: Icons.email_outlined,
//               valid: (val) {
//                 controller.goToVerFiyCode();
//               },
//               isNumber: false,
//             ),
//             const SizedBox(height: 8,),
//             Container(
//               margin:const EdgeInsets.only(top: 15,),
//               padding:const EdgeInsets.all(8),
//               child: CustomElevatedButtonAuth(
//                 text: '30'.tr,
//                 onPressed: () {
//                   controller.goToVerFiyCode();
//                 },),
//             ),
//             const SizedBox(height: 20,)
//           ],
//         ),
//       ),
//     );
//   }
// }
