import 'package:travel_app/util/util.dart';

part '../view/message.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => MessageController();
}

class MessageController extends State<MessageScreen> {
  @override
  void initState() {
    context.read<UserBloc>().add(GetAllUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MessageView(this);
  }
}
