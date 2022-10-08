import 'package:flutter/material.dart';
import 'package:vendor/core/constant/colors/app_color.dart';

class CustomBodyAuth extends StatelessWidget {
  const CustomBodyAuth({Key? key, required this.textBody}) : super(key: key);
  final String textBody;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(textBody,
          style:Theme.of(context).textTheme.bodyText1!.
          copyWith(color: AppColor.color),
          textAlign: TextAlign.center,
        )
    );
  }
}
