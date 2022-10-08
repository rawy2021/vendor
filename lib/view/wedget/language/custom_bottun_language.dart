import 'package:flutter/material.dart';
import '../../../core/constant/colors/app_color.dart';

class CustomButtonLanguage extends StatelessWidget {
  const CustomButtonLanguage({Key? key, required this.textButton,required this.onPressed}) : super(key: key);

  final String textButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin:const EdgeInsets.only(bottom: 25),
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(textButton,
          style:const TextStyle(
            color: Colors.white,
          ),
        ),

      ),
    );
  }
}
