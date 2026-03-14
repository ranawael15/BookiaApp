import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/core/theme/app_text_style.dart';
import 'package:bookia_app/gen/codegen_loader.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final TextInputType? keyboardType;
  bool isPass;
  final TextEditingController? controller;
  CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.isPass = false, this.controller,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.primaryColor,
      obscureText: widget.isPass && isObscure,
      keyboardType: widget.keyboardType,
      onTapOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        suffixIcon: widget.isPass
            ? Padding(
                padding: EdgeInsets.all(8.r),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: isObscure
                      ? SvgPicture.asset(Assets.images.fluentEye20Filled)
                      : Icon(Icons.visibility_off),
                ),
              )
            : null,
        fillColor: AppColors.greyColor,
        filled: true,
        hintText: widget.hintText,
        hintStyle: AppTextStyle.hintStyle,
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
