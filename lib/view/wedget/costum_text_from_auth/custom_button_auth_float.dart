import 'package:flutter/material.dart';
import 'package:vendor/core/constant/colors/app_color.dart';


class CustomElevatedButtonAuth extends StatelessWidget {
  const CustomElevatedButtonAuth({Key? key,  required this.text,required this.onPressed}) : super(key: key);

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 15,left: 15,right: 15,),
      padding:const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: onPressed,
        // ignore: sort_child_properties_last
        child: Text(text,
          style:const TextStyle(
            fontSize: 15,
          ) ,),
        style: ElevatedButton.styleFrom(
          primary: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
          padding:const EdgeInsets.all(16)
        ),
      ),
    );
  }
}