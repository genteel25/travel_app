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
            SizedBox(height: 140.h),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TypoWidget(
                data: "Sign in now",
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
                data: "Please sign in to continue our app",
                textStyle: AppTextStyles.medium,
              ),
            ),
            SizedBox(height: 40.h),
            InputField(
              hintText: "genteelajagbe@gmail.com",
              controller: controller.emailController,
            ),
            SizedBox(height: 24.h),
            InputField(
              hintText: "************",
              type: InputType.password,
              onPressed: () => controller.changePasswordIcon(),
              show: controller.showPassword,
              controller: controller.passwordController,
            ),
            SizedBox(height: 16.h),
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: InkWell(
                onTap: () => pushToNewScreen(context, "/forgotpassword"),
                child: TypoWidget(
                  data: "Forget Password?",
                  textStyle: AppTextStyles.smaller.copyWith(
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is AuthSuccess) {
                  GoRouter.of(context).goNamed("main");
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
              child: Button(
                text: "Sign in",
                onPressed: () => context.read<AuthBloc>().add(
                      SignIn(
                          email: controller.emailController.text,
                          password: controller.passwordController.text),
                    ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Don't have an account?",
                    style: AppTextStyles.medium,
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => context.goNamed("signup"),
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
