import 'package:get/get.dart';
import 'package:vendor/view/screen/auth/forget_password/forget_password.dart';
import 'package:vendor/view/screen/auth/login.dart';
import 'package:vendor/view/screen/auth/forget_password/reset_password.dart';
import 'package:vendor/view/screen/auth/sign_up.dart';
import 'package:vendor/view/screen/auth/forget_password/success_reset_password.dart';
import 'package:vendor/view/screen/auth/forget_password/verfiy_code.dart';
import 'package:vendor/view/screen/auth/success_signup.dart';
import 'package:vendor/view/screen/auth/verfiy_code_signup.dart';
import 'package:vendor/view/screen/language.dart';
import 'package:vendor/view/screen/onBoarding.dart';
import 'core/constant/routes.dart';
import 'core/middleware/middleware.dart';

List<GetPage<dynamic>>? routes =[
 GetPage(name: "/", page: () => const Language(),middlewares: [MyMiddleware()]),
 GetPage(name: AppRoutes.login, page: () => const Login()),
 GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
 GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
 GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
 GetPage(name: AppRoutes.verFiyCode, page: () => const VerFiyCode()),
 GetPage(name: AppRoutes.successResetPassword, page: () => const SuccessResetPassword()),
 GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
 GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignUp()),
 GetPage(name: AppRoutes.verFiyCodeSignup, page: () => const VerFiyCodeSignUp()),

];

// Map<String , Widget Function(BuildContext)> route ={
//  AppRoutes.login:(context) =>const Login(),
//  AppRoutes.signUp:(context) =>const SignUp(),
//  AppRoutes.onBoarding:(context) =>const OnBoarding(),
//  AppRoutes.forgetPassword:(context) =>const ForgetPassword(),
//  AppRoutes.verFiyCode:(context) =>const VerFiyCode(),
//  AppRoutes.resetPassword:(context) =>const ResetPassword(),
//  AppRoutes.successResetPassword:(context) =>const SuccessResetPassword(),
//  AppRoutes.successSignUp:(context) =>const SuccessSignUp(),
// // AppRoutes.checkEmail:(context) =>const CheckEmail(),
//  AppRoutes.verFiyCodeSignup:(context) =>const VerFiyCodeSignUp(),
// };
