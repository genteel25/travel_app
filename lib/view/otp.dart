part of '../controller/otp.dart';

class OtpView extends StatelessView<OtpScreen, OtpController> {
  const OtpView(OtpController state, {Key? key}) : super(state, key: key);

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
                data: "OTP Verification",
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
                data:
                    "Please check your email www.example@gmail.com to see the verification code",
                textStyle: AppTextStyles.medium,
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: TypoWidget(
                data: "OTP Code",
                textStyle: AppTextStyles.bold.copyWith(
                  color: checkThemeMode(context) == ThemeMode.dark
                      ? AppColors.white
                      : AppColors.dark,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              width: double.infinity,
              child: Pinput(
                onCompleted: (value) => goToNewScreen(context, "/home"),
                defaultPinTheme: PinTheme(
                  width: 70.w,
                  height: 56.h,
                  textStyle: AppTextStyles.small,
                  decoration: BoxDecoration(
                      color: const Color(0xffF7F7F9),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
                separator: SizedBox(width: 18.w),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 40.h),
            Button(
              text: "Verify",
              onPressed: () => pushToNewScreen(context, "/home"),
            ),
          ],
        ),
      ),
    );
  }
}
