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
                onCompleted: (value) => controller.setCode(value),
                defaultPinTheme: PinTheme(
                  width: 70.w,
                  height: 56.h,
                  textStyle: AppTextStyles.small.copyWith(
                      color: checkThemeMode(context) == ThemeMode.dark
                          ? AppColors.white
                          : AppColors.dark),
                  decoration: BoxDecoration(
                    color: checkThemeMode(context) == ThemeMode.light
                        ? const Color(0xffF7F7F9)
                        : const Color(0xff20232d),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                separator: SizedBox(width: 18.w),
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(height: 40.h),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  goToNewScreen(context, "signin");
                }
              },
              child: Button(
                text: "Verify",
                onPressed: () => context.read<AuthBloc>().add(
                      VerifyUser(code: controller.code),
                    ),
              ),
            ),
            SizedBox(height: 24.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                controller._start > 0
                    ? TypoWidget(
                        data:
                            "${controller._start.toString()} seconds left(5mins)",
                        textStyle: AppTextStyles.medium
                            .copyWith(fontStyle: FontStyle.italic),
                      )
                    : const Text(""),
                if (controller._start == 0)
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state is AuthSuccess) {
                        showDialog(
                          barrierColor: AppColors.scaffold.withOpacity(0.3),
                          barrierLabel: "Barrier",
                          context: context,
                          builder: (context) {
                            return Dialog(
                              alignment: Alignment.topCenter,
                              child: Container(
                                alignment: Alignment.center,
                                height: 50.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  state.response.message,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      }
                      if (state is AuthFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              state.error.toString(),
                            ),
                          ),
                        );
                      }
                    },
                    child: GestureDetector(
                      onTap: () => context.read<AuthBloc>().add(ResendOtp()),
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          "Resend code",
                          style: AppTextStyles.medium
                              .copyWith(color: AppColors.primary),
                        ),
                      ),
                    ),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
