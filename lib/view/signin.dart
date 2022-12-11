part of '../controller/signin.dart';
// import 'package:travel_app/util/util.dart';

class SigninView extends StatelessView<SigninScreen, SigninController> {
  const SigninView(SigninController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 56.h),
            Container(
              width: 44.w,
              height: 44.h,
              decoration: BoxDecoration(
                color: checkThemeMode(context) == ThemeMode.dark
                    ? AppColors.lightGrey
                    : AppColors.inputBackground,
                borderRadius: BorderRadius.circular(44.r),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                size: 11.w.h,
                color: checkThemeMode(context) == ThemeMode.dark
                    ? AppColors.white
                    : AppColors.dark,
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TypoWidget(
                data: "Sign in now",
                textStyle: AppTextStyles.bolder,
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TypoWidget(
                data: "Please sign in to continue our app",
                textStyle: AppTextStyles.medium,
              ),
            ),
            SizedBox(height: 40.h),
            const InputField(),
            SizedBox(height: 24.h),
            const InputField(),
            SizedBox(height: 16.h),
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: TypoWidget(
                data: "Forget Password?",
                textStyle: AppTextStyles.smaller.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            const Button(text: "Sign in"),
            SizedBox(height: 40.h),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Do you have an account?",
                    style: AppTextStyles.medium,
                  ),
                  TextSpan(
                    text: " Sign up",
                    style: AppTextStyles.smaller.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              child: TypoWidget(
                  data: "Or connect", textStyle: AppTextStyles.medium),
            ),
            SizedBox(height: 100.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AssetHelper(
                  path: "assets/images/facebook.png",
                  width: 44.w,
                ),
                SizedBox(width: 20.w),
                AssetHelper(
                  path: "assets/images/ins.png",
                  width: 44.w,
                ),
                SizedBox(width: 20.w),
                AssetHelper(
                  path: "assets/images/twitter.png",
                  width: 44.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
