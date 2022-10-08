import 'package:get/get.dart';

validInput(String val , int min ,int max ,String type){


  if (type=="UserName"){
    if(!GetUtils.isUsername(val)){
      return "Validate not UserName";
    }

  }

  if(type=="Email"){
    if(!GetUtils.isEmail(val)){
      return "Validate not Email";
    }
  }
  if(type == "Phone"){
    if(GetUtils.isPhoneNumber(val)){
      return "Validate not Phone";
    }
  }
  if(val.isEmpty){
    return "Can't be Empty";
  }
  if(val.length < min){
    return "Can't be Less Than $min";
  }
  if(val.length > max){
    return "Can't be Large Than $max";
  }




}