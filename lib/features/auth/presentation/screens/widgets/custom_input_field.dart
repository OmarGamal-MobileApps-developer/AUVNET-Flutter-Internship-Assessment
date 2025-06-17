import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final TextEditingController? controller; 
  final String? Function(String?)? validator; 
  final TextInputType? keyboardType; 
  final Function(String)? onChanged;

  const CustomInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.controller,
    this.validator,
    this.keyboardType, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 80.h,
      child: TextFormField( 
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder( 
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.0),
          ),
          errorStyle: TextStyle( 
            fontSize: 14.sp,
            color: Colors.red,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 18.h,
            horizontal: 16.w,
          ),
        ),
      ),
    );
  }
}