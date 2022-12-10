part of '../controller/onboarding.dart';

class OnboardingView
    extends StatelessView<OnboardingScreen, OnboardingController> {
  const OnboardingView(OnboardingController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            // color: AppColors.grey,
            width: double.infinity,
            height: 648.h,
            child: PageView.builder(
              onPageChanged: (value) => controller.setPageIndex(value),
              itemCount: 3,
              controller: controller.controller,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(onboarding[index]['image']),
                    TypoWidget(
                      data: onboarding[index]['content'],
                      textStyle: AppTextStyles.onboard.copyWith(
                        color: checkThemeMode(context) == ThemeMode.dark
                            ? AppColors.white
                            : AppColors.dark,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 6.h),
          Container(
            width: double.infinity,
            height: 24.h,
            // color: AppColors.grey,
            alignment: Alignment.center,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => IndicatorDot(
                color: AppColors.primary,
                height: 8.h,
                width: controller.pageIndex == index
                    ? 32.w
                    : controller.pageIndex == controller.pageIndex - 1
                        ? 16.w
                        : 8.w,
              ),
            ),
          ),
          SizedBox(height: 38.h),
          Button(text: controller.pageIndex == 0 ? "Get Started" : "Next")
        ],
      ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  const IndicatorDot({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: REdgeInsets.symmetric(horizontal: 3.r, vertical: 7.r),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: color,
      ),
    );
  }
}
