import 'package:travel_app/util/util.dart';

class AppTextStyles {
  static String fontFamily = 'SF_UI_DISPLAY';

  static TextStyle bolder = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 26.sp,
    color: AppColors.white,
  );
  static TextStyle headerNormal = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w300,
    fontSize: 38.sp,
    color: AppColors.white,
  );
  static TextStyle headerBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 38.sp,
    color: AppColors.white,
  );

  static TextStyle bold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: AppColors.white,
  );
  static TextStyle bolds = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    color: AppColors.white,
  );

  static TextStyle semiBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    color: AppColors.white,
  );

  static TextStyle medium = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    color: AppColors.grey,
  );
  static TextStyle mediumBold = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 24.sp,
    color: AppColors.grey,
  );

  static TextStyle smaller = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
  );
  static TextStyle small = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
  );
  static TextStyle smallest = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle thin = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );
}
