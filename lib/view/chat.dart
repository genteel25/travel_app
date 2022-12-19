part of '../controller/chat.dart';

class ChatView extends StatelessView<ChatScreen, ChatController> {
  const ChatView(ChatController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.lightGrey,
        centerTitle: true,
        title: GestureDetector(
          onTap: () => context.push("/profile"),
          child: TypoWidget(
            data: widget.user['user'].name,
            textStyle: AppTextStyles.bolds,
          ),
        ),
        actions: [
          FittedBox(
            fit: BoxFit.none,
            child: Container(
              width: 10.w,
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 20.h,
        ),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.user['messages'].length,
              itemBuilder: (context, index) {
                widget.user['messages'][index]['senderId'];
                return widget.user['messages'][index]['senderId'] ==
                        "639d464b0a66cc9167e97967"
                    ? _senderBox(
                        context,
                        widget.user['messages'][index]['message'],
                      )
                    : _receiverBox(
                        context,
                        widget.user['messages'][index]['message'],
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _receiverBox(BuildContext context, String message) {
  return Container(
    width: double.infinity,
    margin: REdgeInsets.symmetric(vertical: 8.r),
    height: 80.h,
    // color: Colors.red,
    alignment: Alignment.centerLeft,
    child: Container(
      width: 120.w,
      height: 70.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(4.r)),
      child: TypoWidget(
        data: message,
        textStyle: AppTextStyles.medium.copyWith(color: Colors.white),
      ),
    ),
  );
}

Widget _senderBox(BuildContext context, String message) {
  return Container(
    width: double.infinity,
    margin: REdgeInsets.symmetric(vertical: 8.r),
    height: 80.h,
    // color: Colors.red,
    alignment: Alignment.centerRight,
    child: Container(
      width: 120.w,
      height: 70.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(4.r)),
      child: TypoWidget(
        data: message,
        textStyle: AppTextStyles.medium.copyWith(color: Colors.white),
      ),
    ),
  );
}
