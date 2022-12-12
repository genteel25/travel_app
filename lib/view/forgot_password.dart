part of '../controller/forgot_password.dart';

class ForgotPasswordView
    extends StatelessView<ForgotPasswordScreen, ForgotPasswordController> {
  const ForgotPasswordView(ForgotPasswordController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
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
                    data: "Forgot password",
                    textStyle: AppTextStyles.bolder.copyWith(
                      color: checkThemeMode(context) == ThemeMode.dark
                          ? AppColors.white
                          : AppColors.dark,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: TypoWidget(
                    data: "Enter your email account to reset your password",
                    textStyle: AppTextStyles.medium,
                  ),
                ),
                SizedBox(height: 40.h),
                InputField(hintText: "genteelajagbe@gmail.com"),
                SizedBox(height: 40.h),
                Button(
                  text: "Reset Password",
                  onPressed: () => controller.changeModalVisibility(),
                ),
              ],
            ),
          ),
          if (controller.showModal == true)
            InkWell(
              onTap: () {
                controller.changeModalVisibility();
                pushToNewScreen(context, "/otp");
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color(0xff1B1E28).withOpacity(0.2),
              ),
            ),
          if (controller.showModal == true)
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 20.r, vertical: 258.r),
              child: _notificationModal(context),
            )
        ],
      ),
    );
  }
}

Widget _notificationModal(BuildContext context) {
  return Container(
    width: 335.w,
    height: 196.h,
    decoration: BoxDecoration(
      color: checkThemeMode(context) == ThemeMode.light
          ? AppColors.white
          : const Color(0xff2A2F3F),
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: Column(
      children: [
        SizedBox(height: 30.h),
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(44.r),
          ),
          child: AssetHelper(
            // type: AssetType.svg,
            path: "assets/images/email.png",
            width: 8.w,
            fit: BoxFit.none,
          ),
        ),
        SizedBox(height: 20.h),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: TypoWidget(
            data: "Check your email",
            textStyle: AppTextStyles.bolder.copyWith(
              color: checkThemeMode(context) == ThemeMode.dark
                  ? AppColors.white
                  : AppColors.dark,
            ),
          ),
        ),
        SizedBox(height: 8.h),
        Container(
          width: double.infinity,
          padding: REdgeInsets.symmetric(horizontal: 30.r),
          alignment: Alignment.center,
          child: TypoWidget(
            data: "We have send password recovery instruction to your email",
            textStyle: AppTextStyles.medium,
          ),
        ),
      ],
    ),
  );
}
