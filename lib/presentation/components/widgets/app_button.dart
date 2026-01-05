import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const AppButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.sp),
      child: SizedBox(
        width: double.infinity,
        height: 56.h,
        child: ElevatedButton(onPressed: onPressed, child: Text(text)),
      ),
    );
  }
}
