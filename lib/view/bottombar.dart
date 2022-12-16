part of '../controller/bottombar.dart';

class BottomBarView
    extends StatelessView<BottomBarScreen, BottomBarController> {
  const BottomBarView(BottomBarController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: controller.currentIndex,
        children: const [
          HomeScreen(),
          CalendarScreen(),
          MessageScreen(),
          ProfileScreen()
        ],
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomCenter,
        // color: Colors.amber,
        height: 98.h,
        child: Stack(
          children: [
            SvgPicture.asset(
              "assets/svg/bottomss.svg",
              fit: BoxFit.fitWidth,
              width: double.infinity,
              color: checkThemeMode(context) == ThemeMode.dark
                  ? const Color(0xff20232d)
                  : AppColors.white,
            ),
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 21.5.r),
              child: Align(
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => controller.setPage(0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/home_active.svg",
                            color: controller.currentIndex == 0
                                ? AppColors.primary
                                : AppColors.ash,
                          ),
                          SizedBox(height: 4.h),
                          TypoWidget(
                            data: "Home",
                            textStyle: AppTextStyles.smaller.copyWith(
                                fontSize: 12.sp,
                                color: checkCurrentThemeMode(context)
                                    ? AppColors.white
                                    : null),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 36.5.w),
                    GestureDetector(
                      onTap: () => controller.setPage(1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/calendar_inactive.svg",
                            color: controller.currentIndex == 1
                                ? AppColors.primary
                                : AppColors.ash,
                          ),
                          SizedBox(height: 4.h),
                          TypoWidget(
                            data: "Calendar",
                            textStyle: AppTextStyles.smaller.copyWith(
                                fontSize: 12.sp,
                                color: checkCurrentThemeMode(context)
                                    ? AppColors.white
                                    : null),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 22.w),
                    Container(
                      width: 50.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(50.r),
                      ),
                      child: SvgPicture.asset("assets/svg/search.svg",
                          fit: BoxFit.none, width: 17.w),
                    ),
                    SizedBox(width: 20.5.w),
                    GestureDetector(
                      onTap: () => controller.setPage(2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/message_inactive.svg",
                            color: controller.currentIndex == 2
                                ? AppColors.primary
                                : AppColors.ash,
                          ),
                          SizedBox(height: 4.h),
                          TypoWidget(
                            data: "Messages",
                            textStyle: AppTextStyles.smaller.copyWith(
                                fontSize: 12.sp,
                                color: checkCurrentThemeMode(context)
                                    ? AppColors.white
                                    : null),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 31.5.w),
                    GestureDetector(
                      onTap: () => controller.setPage(3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/profile_inactive.svg",
                            color: controller.currentIndex == 3
                                ? AppColors.primary
                                : AppColors.ash,
                          ),
                          SizedBox(height: 4.h),
                          TypoWidget(
                            data: "Profile",
                            textStyle: AppTextStyles.smaller.copyWith(
                                fontSize: 12.sp,
                                color: checkCurrentThemeMode(context)
                                    ? AppColors.white
                                    : null),
                          )
                        ],
                      ),
                    ),
                    // SizedBox(width: 12.7.w),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
