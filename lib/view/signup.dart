part of '../controller/signup.dart';

class SignupView extends StatelessView<SignupScreen, SignupController> {
  const SignupView(SignupController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 20.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 56.h),
            InkWell(
              onTap: () => popScreen(context),
              child: Container(
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
            ),
            SizedBox(height: 40.h),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TypoWidget(
                data: "Sign up now",
                textStyle: AppTextStyles.bolder.copyWith(
                  color: checkThemeMode(context) == ThemeMode.dark
                      ? AppColors.white
                      : AppColors.dark,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TypoWidget(
                data: "Please fill the details and create account",
                textStyle: AppTextStyles.medium,
              ),
            ),
            SizedBox(height: 40.h),
            InputField(hintText: "Quadri Opeyemi"),
            SizedBox(height: 24.h),
            InputField(hintText: "genteelajagbe@gmail.com"),
            SizedBox(height: 24.h),
            InputField(
              hintText: "************",
              type: InputType.password,
              onPressed: () => controller.changePasswordIcon(),
              show: controller.showPassword,
            ),
            SizedBox(height: 16.h),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: TypoWidget(
                data: "Password must be 8 character",
                textStyle: AppTextStyles.medium,
              ),
            ),
            SizedBox(height: 40.h),
            const Button(text: "Sign up"),
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
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => pushToNewScreen(context, "/home"),
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
            SizedBox(height: 36.h),
            _socialIconButtons(),
          ],
        ),
      ),
    );
  }
}

Widget _socialIconButtons() {
  return Row(
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
  );
}
