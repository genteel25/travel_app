part of '../controller/message.dart';

class MessageView extends StatelessView<MessageScreen, MessageController> {
  const MessageView(MessageController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 62.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r),
              child: TypoWidget(
                  data: "Recent Chats", textStyle: AppTextStyles.bolds),
            ),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              height: 60.h,
              padding: REdgeInsets.only(left: 12.r),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => context.push("/chat"),
                  child: Container(
                    width: 60.w,
                    height: 60.h,
                    margin: REdgeInsets.symmetric(horizontal: 4.r),
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(100.r),
                      border: Border.all(width: 3, color: AppColors.primary),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/person.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.r),
              child:
                  TypoWidget(data: "Contacts", textStyle: AppTextStyles.bolds),
            ),
            SizedBox(height: 16.h),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => context.push("/chat"),
                child: Container(
                  padding:
                      REdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
                  margin:
                      REdgeInsets.symmetric(vertical: 4.r, horizontal: 16.r),
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/images/person.jpg",
                          width: 50.w,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      SizedBox(width: 16.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TypoWidget(
                            data: "Ajagbe Quadri",
                            textStyle: AppTextStyles.semiBold
                                .copyWith(color: Colors.grey[200]),
                          ),
                          SizedBox(height: 6.h),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 190.w,
                            child: TypoWidget(
                              data:
                                  "I am a Travel loving person, shey you know",
                              textStyle: AppTextStyles.medium.copyWith(
                                  color: Colors.grey[600], fontSize: 14.sp),
                              wrap: false,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 10.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
