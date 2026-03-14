import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomBackButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
            width: 41.w,
            height: 41.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r)
            ),
            child: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_back_ios))),
      ],
    );
  }
}
