import 'dart:ui';
import 'package:flutter/material.dart';

class AppColor{
  //light theme Colors
   static const bgColor=Colors.grey;
   static const themColor=Color(0xffBFBFD9FF);
   static const fontColor = Colors.black;
   //Dark theme Colors
   static const darkbgColor =Colors.deepPurple;
   static const darkfontColor = Colors.white;

}
TextStyle mTextStyle43(
{
Color mColor=AppColor.fontColor,
   FontWeight mWeight =FontWeight.bold
})
{
   return TextStyle(
      fontSize: 43,
      color: AppColor.fontColor,
      fontWeight: FontWeight.bold,
);
}
TextStyle mTextStyle34(
    {
       Color mColor=AppColor.fontColor,
       FontWeight mWeight =FontWeight.bold
    })
{
   return TextStyle(
      fontSize: 34,
      color: AppColor.fontColor,
      fontWeight: FontWeight.bold,
   );
}
TextStyle mTextStyle25(
    {
       Color mColor=AppColor.fontColor,
       FontWeight mWeight =FontWeight.bold
    })
{
   return TextStyle(
      fontSize:25,
      color: AppColor.fontColor,
      fontWeight: FontWeight.bold,
   );
}
TextStyle mTextStyle21(
    {
       Color mColor=AppColor.fontColor,
       FontWeight mWeight =FontWeight.normal
    })
{
   return TextStyle(
      fontSize:21,
      color: AppColor.fontColor,
      fontWeight: FontWeight.normal,
   );
}
TextStyle mTextStyle16(
    {
       Color mColor=AppColor.fontColor,
       FontWeight mWeight =FontWeight.bold
    })
{
   return TextStyle(
      fontSize: 16,
      color: AppColor.fontColor,
      fontWeight: FontWeight.bold,
   );
}
TextStyle mTextStyle14(
    {
       Color mColor=AppColor.fontColor,
       FontWeight mWeight =FontWeight.bold
    })
{
   return TextStyle(
      fontSize:14,
      color: AppColor.fontColor,
      fontWeight: FontWeight.bold,
   );
}
TextStyle mTextStyle12(
    {
       Color mColor=AppColor.fontColor,
       FontWeight mWeight =FontWeight.bold
    })
{
   return TextStyle(
      fontSize: 12,
      color: AppColor.fontColor,
      fontWeight: FontWeight.bold,
   );
}

InputDecoration fieldDecoration({
  required String hint,required String labelText,
  Color  filledColor =AppColor.themColor,
  IconData? prefixIcon,
  IconData? suffixIcon,
  bool isPasswordField =false,
}){
  return InputDecoration(
    filled: true,
    fillColor: filledColor,
    hintText: hint,
    label: Text(labelText),
    prefixIcon: prefixIcon!=null ? Icon(prefixIcon):null,
      suffixIcon: suffixIcon!=null ? Icon(suffixIcon): null,
    enabledBorder:getBorder(),
    focusedBorder: getBorder(
      borderColor: Colors.black,
      borderWidth: 1
    )
  );
}
OutlineInputBorder getBorder({
  double radius=21,
  Color borderColor =AppColor.bgColor,
  double borderWidth =1,
}){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: AppColor.bgColor,
        width: 2,
      )
  );
}