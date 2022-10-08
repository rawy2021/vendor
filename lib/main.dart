import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vendor/core/localaization/changelocal.dart';
import 'package:vendor/route.dart';
import 'package:vendor/view/screen/language.dart';
import 'core/constant/colors/app_color.dart';
import 'core/localaization/tranaslation.dart';
import 'core/services/services.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller =Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      color: AppColor.background,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme:controller.appTheme,
      home:const Language(),
     // routes: route,
      getPages: routes,

    );
  }
}




