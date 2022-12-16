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
            data: "Ajagbe Quadri",
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
          )
        ],
      ),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 20.h,
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
