import 'package:flutter/material.dart';

class TextFromFiledAuth extends StatelessWidget {
  const TextFromFiledAuth({Key? key,
    required this.hintText,
    required this.iconData,
    required this.myController,
    required this.labelText,
    required this.valid,
    required this.isNumber,
    this.obscureText,
    this.onTapIcon,
      }) : super(key: key);

  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? myController;
  final String? Function(String?) valid;
  final void Function()? onTapIcon;
  final bool isNumber;
  final bool? obscureText;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin:const EdgeInsets.only(left: 15,right: 15,top: 15,),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: isNumber?
            const TextInputType.numberWithOptions(decimal: true):
            TextInputType.text,
            validator: valid,
            controller: myController,
            textAlign: TextAlign.center,
            obscureText: obscureText == null ||obscureText==false ?false :true,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle:const TextStyle(fontSize: 14),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:const EdgeInsets.symmetric(
                    vertical: 5,horizontal: 30),
                label: Container(
                  margin:const EdgeInsets.symmetric(horizontal: 20),
                  child : Text(labelText) ,
                ),
                suffixIcon:InkWell(child: Icon(iconData),onTap:onTapIcon ,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )
            ),
          ),
        ),
      ),
    );
  }
}
