import 'package:boby_ai/app/localization/generated/l10n.dart';
import 'package:boby_ai/app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

InputDecoration movieSearchDecoration(BuildContext context) {
  return InputDecoration(
    filled: true,
    fillColor: AppColors.textPrimary,

    prefixIcon: const Icon(Icons.search, color: AppColors.disabled),

    suffixIcon: const Icon(Icons.mic, color: AppColors.disabled),

    contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 16.w),

    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide.none),

    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide.none),

    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r), borderSide: BorderSide.none),

    constraints: BoxConstraints(maxHeight: 36.h),

    visualDensity: VisualDensity.compact,

    focusColor: AppColors.textPrimary,

    enabled: true,

    maintainHintSize: true,

    isCollapsed: false,

    hint: Text(
      S.current.search_text,
      textAlign: TextAlign.start,
      style: context.textTheme.bodyLarge?.copyWith(color: AppColors.disabled, fontSize: 17.sp),
    ).paddingOnly(top: 8.h),
  );
}
