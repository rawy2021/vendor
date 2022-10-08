import 'package:flutter/material.dart';
import 'package:vendor/core/constant/colors/app_color.dart';

class CustomButtonAuth extends StatelessWidget {
  const CustomButtonAuth({Key? key,  required this.text,required this.onPressed}) : super(key: key);

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(top: 15,left: 15,right: 15,),
      padding:const EdgeInsets.all(8),
      child:  MaterialButton(
        color: AppColor.primaryColor,
        onPressed: (){
         // controller.next();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding:const EdgeInsets.symmetric(vertical: 16),
        child: Text(text,
          style:const TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
