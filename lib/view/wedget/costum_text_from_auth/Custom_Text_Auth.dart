import 'package:flutter/material.dart';
import 'package:vendor/core/constant/colors/app_color.dart';

class CustomTextAuth extends StatelessWidget {
  const CustomTextAuth({Key? key,
    required this.text}) :super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,
        style:Theme.of(context).textTheme.headline1!.
        copyWith(color: AppColor.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
