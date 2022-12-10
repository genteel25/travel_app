import 'package:travel_app/design/design.dart';
import 'package:travel_app/util/package_export.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.dark,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        // background: AppColors.primary,
        primary: AppColors.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(335.w, 56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          textStyle: AppTextStyles.bold,
        ),
      ));
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(335.w, 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        textStyle: AppTextStyles.bold,
      ),
    ),
  );
}
