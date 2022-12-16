part of '../controller/home.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(HomeController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          SizedBox(height: 56.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 118.w,
                  height: 44.h,
                  padding: REdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: checkThemeMode(context) == ThemeMode.dark
                        ? const Color(0xff20232d)
                        : AppColors.inputBackground,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Row(
                    children: [
                      Image.asset("assets/images/mask.png"),
                      SizedBox(width: 6.h),
                      TypoWidget(
                        data: "Abraham",
                        wrap: true,
                        overflow: TextOverflow.ellipsis,
                        textStyle: AppTextStyles.smaller.copyWith(
                          color: checkThemeMode(context) == ThemeMode.dark
                              ? AppColors.white
                              : AppColors.dark,
                        ),
                      )
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "assets/svg/notification.svg",
                  color: checkThemeMode(context) == ThemeMode.dark
                      ? AppColors.white
                      : AppColors.dark,
                )
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: SizedBox(
              child: TypoWidget(
                data: "Explore the Beautiful world",
                textAlign: TextAlign.start,
                textStyle: AppTextStyles.headerBold.copyWith(
                  color: checkThemeMode(context) == ThemeMode.dark
                      ? AppColors.white
                      : AppColors.dark,
                ),
              ),
            ),
          ),
          SizedBox(height: 33.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TypoWidget(
                  data: "Best Destination",
                  textStyle: AppTextStyles.bolder.copyWith(
                    fontSize: 20.sp,
                    color: checkThemeMode(context) == ThemeMode.dark
                        ? AppColors.white
                        : AppColors.dark,
                  ),
                ),
                TypoWidget(
                    data: "View all",
                    textStyle:
                        AppTextStyles.medium.copyWith(color: AppColors.primary))
              ],
            ),
          ),
          SizedBox(height: 26.h),
          Container(
            // padding: REdgeInsets.only(left: 20.r),
            width: double.infinity,
            height: 384.h,
            // color: Colors.grey,
            alignment: Alignment.center,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) => Container(
                // padding: REdgeInsets.only(),
                width: 268.w,
                height: 384.h,
                margin: REdgeInsets.only(
                    right: 16.r, left: index == 0 ? 20.r : 0.r),
                decoration: BoxDecoration(
                    color: checkThemeMode(context) == ThemeMode.dark
                        ? const Color(0xff20232d)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(24.r),
                    boxShadow: checkThemeMode(context) == ThemeMode.light
                        ? [
                            BoxShadow(
                              color: const Color(0xffB4BCC9).withOpacity(0.12),
                              offset: Offset(0, 6.h),
                              blurRadius: 16.r,
                            ),
                          ]
                        : null),
              ),
            ),
          )
        ],
      ),
    );
  }
}
