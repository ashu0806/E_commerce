import 'package:e_commerce/core/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsField extends StatelessWidget {
  const DetailsField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);
  final String hintText;
  final IconData icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: TextFormField(
        controller: controller,
        cursorColor: AppConstant.primaryColor,
        style: Theme.of(context).textTheme.headline4!.copyWith(
              fontSize: 20.sp,
              color: AppConstant.appBlack,
            ),
        decoration: InputDecoration(
          isDense: true,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.headline5!.copyWith(
                fontSize: 16.sp,
                color: AppConstant.titleColor,
              ),
          prefixIcon: Icon(
            icon,
            color: AppConstant.appBlack,
            size: 25.sp,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
            borderSide: const BorderSide(
              color: AppConstant.secondaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
            borderSide: const BorderSide(
              color: AppConstant.secondaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              15.r,
            ),
            borderSide: const BorderSide(
              color: AppConstant.secondaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
